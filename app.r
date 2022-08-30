library(plumber)

port <- Sys.getenv("PORT")
if (port == "") port <- "8000"

root <- pr("plumber.R")

pr_run(root, host = "0.0.0.0", port = as.numeric(port))
