#' Ecommerce site behaviour and orders (`ecom`)
#'
#' 1001 sessions with device, referrer, pages/visits, purchase flag and
#' order value/items.
#'
#' @format A data frame with 1001 rows and 8 variables.
#' @source <https://github.com/rsquaredacademy-education/datasets> (`web.csv`), CC0-1.0.
"ecom"

#' Messy strings for stringr practice (`mockstring`)
#'
#' 1001 rows of emails, image URLs and page URLs for domain/extension/protocol parsing.
#'
#' @format A data frame with 1001 rows.
#' @source <https://github.com/rsquaredacademy-education/datasets> (`mock_strings.csv`), CC0-1.0.
"mockstring"

#' Receivables invoices (`transact`)
#'
#' 2467 invoices with Invoice, Due and Payment dates for lubridate practice.
#'
#' @format A data frame with 2467 rows.
#' @source <https://github.com/rsquaredacademy-education/datasets> (`transact.csv`), CC0-1.0.
"transact"

#' Orders and customers for joins (`order`, `customer`)
#'
#' 300 orders and 91 customers (semicolon-delimited at source) used to drill
#' `*_join()` verbs.
#'
#' @format Two data frames: `order` (300 rows), `customer` (91 rows).
#' @source <https://github.com/rsquaredacademy-education/datasets>, CC0-1.0.
#' @aliases customer
"order"

#' High-school-and-beyond extracts (`hsb`, `hsb1`–`hsb5`)
#'
#' Small CSVs for flat-file import drills: delimiters, `col_types`, `skip`, `n_max`.
#'
#' @format Data frames of ~200 rows each.
#' @source <https://github.com/rsquaredacademy-education/datasets>, CC0-1.0.
#' @aliases hsb1 hsb2 hsb3 hsb4 hsb5
"hsb"

#' Employee hire/termination dates (`hr_data`)
#'
#' Used for employment-length exercises in the lubridate chapter.
#'
#' @format A data frame with hire and termination dates.
#' @source <https://github.com/rsquaredacademy-education/datasets> (`hr-data.csv`), CC0-1.0.
"hr_data"

#' Web analytics (`analytics`, `analytics_raw`)
#'
#' Session-level analytics for the factors chapters. `analytics` is the
#' analysis-ready extract; `analytics_raw` is the uncleaned export.
#'
#' @format Two data frames (see `str()` for columns).
#' @source Rsquared Academy, CC0-1.0.
#' @aliases analytics_raw
"analytics"

#' Daily weather for three Indian cities (`weather`)
#'
#' 20 days of June 2026 weather for Pune, Mumbai and Bengaluru, used in the
#' Intro to R course (reading a CSV, vectors, data frames, plots).
#'
#' @format A data frame with 60 rows and 5 variables:
#' \describe{
#'   \item{date}{Day of the reading, ISO `YYYY-MM-DD` text.}
#'   \item{city}{`Pune`, `Mumbai` or `Bengaluru` (20 rows each).}
#'   \item{temp_c}{Daily high temperature, degrees Celsius.}
#'   \item{rain_mm}{Rainfall, millimetres.}
#'   \item{sunny}{`TRUE` when `rain_mm` is 0.}
#' }
#' @source <https://github.com/rsquaredacademy-publications/datasets> (`weather.csv`), CC0-1.0.
"weather"

#' Bean & Barrel store-day sales (`store_days`)
#'
#' One row per store per trading day for a fictional coffee chain: 9 stores in
#' 5 countries over 20 days of March 2026. Used in the Data Viz with ggplot2
#' course.
#'
#' @format A tibble with 180 rows and 9 variables:
#' \describe{
#'   \item{day}{Trading day in the sample, 1–20.}
#'   \item{date}{ISO date text, `2026-03-01` to `2026-03-20`.}
#'   \item{store_id}{Store, `ST-01` to `ST-09`.}
#'   \item{city}{Store city.}
#'   \item{country}{Store country (Canada, India, Germany, Kenya, Portugal).}
#'   \item{customers}{Paying customers that day.}
#'   \item{revenue_usd}{Revenue that day, US dollars.}
#'   \item{avg_spend_usd}{Revenue per customer that day (`revenue_usd / customers`, 2 dp), US dollars.}
#'   \item{avg_wait_min}{Mean wait at the counter, minutes.}
#' }
#' @source <https://github.com/rsquaredacademy-publications/datasets> (`store_days.csv`), CC0-1.0.
"store_days"

#' Bean & Barrel sales (`sales`)
#'
#' One row per sale for a fictional coffee chain: 160 sales over 20 days of
#' March 2026. Used in the Data Wrangling with dplyr and Data Viz with ggplot2
#' courses. Joins to [stores] on `store_id`.
#'
#' @format A tibble with 160 rows and 7 variables:
#' \describe{
#'   \item{sale_id}{Sale, `S-0001` to `S-0160`.}
#'   \item{sale_date}{ISO date text, `2026-03-01` to `2026-03-20`.}
#'   \item{store_id}{Store, `ST-01` to `ST-09`.}
#'   \item{product}{Cappuccino, Cold Brew, Espresso, Latte or Tea.}
#'   \item{size}{Small, Medium or Large.}
#'   \item{units}{Cups sold in the sale.}
#'   \item{revenue_usd}{Revenue from the sale, US dollars.}
#' }
#' @source <https://github.com/rsquaredacademy-publications/datasets> (`sales.csv`), CC0-1.0.
"sales"

#' Bean & Barrel stores (`stores`)
#'
#' One row per store of a fictional coffee chain: 9 stores in 5 countries.
#' Used in the Data Wrangling with dplyr course (joins). Joins to [sales] on
#' `store_id`.
#'
#' @format A tibble with 9 rows and 6 variables:
#' \describe{
#'   \item{store_id}{Store, `ST-01` to `ST-09`.}
#'   \item{store_name}{Store name.}
#'   \item{city}{Store city.}
#'   \item{country}{Store country.}
#'   \item{opened_year}{Year the store opened.}
#'   \item{seats}{Seats in the store.}
#' }
#' @source <https://github.com/rsquaredacademy-publications/datasets> (`stores.csv`), CC0-1.0.
"stores"
