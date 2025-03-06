daily_temperatures <- c(25.3, 36.1, 24.8, 33.9, 22.5, 31.7, 20.8)

weather_station <- function(temperature) {
  average_temp  = mean(temperature)
  highest_temp = max(temperature)
  
  # Calculating the number of entries above 30
  days_above_30 <- sum(temperature > 30)

    result <- list(
    "highest_temperature" = highest_temp,
    "average_temp" = average_temp,
    "days_above_30" = days_above_30
  )
  
  return(result)
}

weather_station(daily_temperatures)
