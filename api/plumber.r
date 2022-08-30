# plumber.R

#* @plumber
function(pr) {
  pr %>%
    pr_mount("faithful", plumb("faithful.R")) |>
    pr_mount("iris", plumb("iris.R"))
}

# Set access control
#* @filter cors
cors <- function(res) {
  res$setHeader("Access-Control-Allow-Origin", "http://localhost:3000")
  plumber::forward()
}
