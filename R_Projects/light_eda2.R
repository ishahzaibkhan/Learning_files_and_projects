library(tidyverse)
library(skimr)
library(janitor)

hotel_bookings <- read.csv("./hotel_booking2.csv")

hotel_bookings_v2 <- arrange(booking_df, desc(lead_time))

# the dollar sign tells the name of the column we want to select
max(hotel_bookings$lead_time)
min(hotel_bookings$lead_time)
mean(hotel_bookings$lead_time)

hotel_summary <- 
  hotel_bookings %>%
  group_by(hotel) %>%
  summarise(average_lead_time=mean(lead_time),
            min_lead_time=min(lead_time),
            max_lead_time=max(lead_time))