library(plumber)

port <- Sys.getenv("PORT")

root <- pr("plumber.r")

pr_run(root, host = "0.0.0.0", port = as.numeric(port), docs = "swagger")
