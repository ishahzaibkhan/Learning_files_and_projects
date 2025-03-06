monthly_expenses <- list(280, 150, 370, 460, 130, 430, 320 , 890, 100)

calculate_expenses <- function(expenses_list, threshold) {
  # converting the list to a vector to apply the methods like sum and max
  expenses_list_vector <- unlist(expenses_list)
  
  # calculating the sum of the expenses
  total_expenses <- sum(expenses_list_vector)
  
  #calculating the highest expense
  highest_expense <- max(expenses_list_vector)
  
  # Checking the number of items above the threshold and adding them
  expenses_above_threshold <- sum(expenses_list_vector > threshold)
  
  #returning the result in the form of named list
  result <- list(
    "total_expense" = total_expenses,
    "highest_expense" = highest_expense,
    "entries_above_threshold" = expenses_above_threshold
  )
  return(result)
}

calculate_expenses(monthly_expenses, 200)