library(plumber)

root <- pr("plumber-local.r")

pr_run(root, host = "127.0.0.1", port = 8000, docs = "swagger")
