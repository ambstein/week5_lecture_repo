library(tidyverse)
library(broom)

# Functions and across ----

ds <- palmerpenguins::penguins %>% filter_out(species == "Chinstrap")

# Write a coefficient of variation fx (sd / mean * 100) that omits NAs and rounds the output
# Make digits an optional argument that controls how many digits to round the response
# Think about what would make a sensible default value for digits

sd_rm_na <- function(x) {
  sd(x, na.rm = TRUE)
}

mean_rm_na <- function(x) {
  mean(x, na.rm = TRUE)
}

coeff_var <- function(x) {
  ((sd_rm_na(x) / mean_rm_na(x)) * 100)
} round(x)

# Using across, find the coefficient of variation for all numeric variables except year
# rounded to 2 decimals

# YOUR ANSWER HERE

# Correct output
# bill_length_mm bill_depth_mm flipper_length_mm body_mass_g
# <dbl>         <dbl>             <dbl>       <dbl>
# 12.2          12.0              7.44        19.4