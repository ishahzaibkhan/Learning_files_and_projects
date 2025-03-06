#libraries to import
library(tidyverse)
library(readr)
library(skimr)
library(readr)
library(dplyr)

# Reading csv file and loading it into a variable
path <- "./hotel_bookings.csv"
bookings_df <- read.csv(path)

#selecting the hotel, iscanceled and lead time columns
trimmed_df <- bookings_df %>% 
  select("hotel", "is_canceled", "lead_time" )

#changing the name of hotel column to hotel_type
trimmed_df <- bookings_df %>% 
  rename("hotel_type" = "hotel" )

# Merging the columns arrival_data_year and arrival_date_month to one column arrival_month_year
example_df <- bookings_df %>% 
  select("arrival_date_year", "arrival_date_month") %>% 
  unite(arrival_month_year, c("arrival_date_month", "arrival_date_year"), sep = " ")

# Merging the values of adult children and babies into family
example_df <- bookings_df %>% 
  mutate(family = adults + children + babies)

# Creating a column number_canceled for total number of cancelled 
example_df <- bookings_df %>% 
  mutate(number_cancelled = sum(is_canceled))

# Creating a column 'average_lead_time' for get the mean of lead time
example_df <- bookings_df %>% 
  mutate(average_lead_time = mean(lead_time))

