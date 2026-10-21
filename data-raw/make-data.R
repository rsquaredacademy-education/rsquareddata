# data-raw/make-data.R
# Build rsquareddata datasets from rsquaredacademy/datasets (CC0-1.0)
# plus local wrangle-r files. Run once per data update, then
# devtools::document() to refresh man/ pages.

base <- "https://raw.githubusercontent.com/rsquaredacademy-education/datasets/master"
book <- "F:/R/ebooks/data-wrangling"

read <- readr::read_csv

ecom         <- read(file.path(base, "web.csv"), show_col_types = FALSE)
mockstring   <- read(file.path(base, "mock_strings.csv"), show_col_types = FALSE)
transact     <- read(file.path(base, "transact.csv"), show_col_types = FALSE)
order        <- readr::read_delim(file.path(base, "order.csv"), delim = ";", show_col_types = FALSE)
customer     <- readr::read_delim(file.path(base, "customer.csv"), delim = ";", show_col_types = FALSE)
hsb          <- read(file.path(base, "hsb.csv"), show_col_types = FALSE)
hsb1         <- read(file.path(base, "hsb1.csv"), show_col_types = FALSE)
hsb2         <- read(file.path(base, "hsb2.csv"), show_col_types = FALSE)
hsb3         <- read(file.path(base, "hsb3.csv"), show_col_types = FALSE)
hsb4         <- read(file.path(base, "hsb4.csv"), show_col_types = FALSE)
hsb5         <- read(file.path(base, "hsb5.csv"), show_col_types = FALSE)
hr_data      <- read(file.path(base, "hr-data.csv"), show_col_types = FALSE)
analytics    <- readRDS(file.path(book, "analytics.rds"))
analytics_raw <- readRDS(file.path(book, "analytics_raw.rds"))

usethis::use_data(ecom, mockstring, transact, order, customer,
                  hsb, hsb1, hsb2, hsb3, hsb4, hsb5, hr_data,
                  analytics, analytics_raw,
                  overwrite = TRUE, compress = "xz")

# Course data (lms). Read with base read.csv, as the Intro to R lessons do, so
# `date` stays text and `sunny` is logical.
weather <- utils::read.csv(file.path(base, "weather.csv"))
usethis::use_data(weather, overwrite = TRUE, compress = "xz")
