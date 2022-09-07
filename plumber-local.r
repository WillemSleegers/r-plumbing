# plumber.R
#* @apiTitle My R API

#* @plumber
function(pr) {
  pr |>
    pr_mount("faithful", plumb("faithful.r")) |>
    pr_mount("iris", plumb("iris.r")) |>
    pr_mount("math", plumb("math.r"))
}

#* @preempt __first__
#* @get /
function(req, res) {
  res$status <- 302
  res$setHeader("Location", "./__docs__/")
  res$body <- "Redirecting..."
  res
}

# Set access control
#* @filter cors
cors <- function(res) {
  res$setHeader(
    "Access-Control-Allow-Origin",
    "http://localhost:3000"
  )
  plumber::forward()
}
