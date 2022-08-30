# faithful.R
#* @apiTitle Faithful Data API

#* Get faithful data
#* @get /data
function() {
    faithful
}

#* Get faithful names
#* @get /names
function() {
    names(faithful)
}

#* Get histogram data
#* @get /hist
function(column, bins) {
    x <- faithful[, column]
    bins <- as.numeric(bins)
    breaks <- seq(min(x), max(x), length.out = bins + 1)
    hist_out <- hist(x, breaks = breaks, plot = FALSE)
    as.data.frame(hist_out[c("counts", "mids")])
}
