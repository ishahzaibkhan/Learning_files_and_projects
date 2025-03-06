# using filter function from dplyr library
library(dplyr)

student_names <- c(
  "Muhammad",
  "Fatima",
  "Ali",
  "Aisha",
  "Yusuf",
  "Noor",
  "Bilal",
  "Mariam",
  "Hamza",
  "Zainab"
)
student_marks <- c(85, 45, 92, 67, 38, 73, 95, 49, 76, 30)

# Creating dataframe containing the student names and marks
student_df = data.frame("name" = student_names, "marks" = student_marks)

calculate_result <- function(student_data) {
  # Using piping and filter method to extract the passed students and converting the result into a list
  passed_students <- student_data %>%
    filter(marks >= 50)
  passed_students <- as.list(passed_students)
  
  # Using piping and filter method to extract the passed students and converting the result into a list
  failed_students <- student_data %>%
    filter(marks < 50)
  failed_students <- as.list(failed_students)
  
  student_result <- list("passed_students" = passed_students,
                         "failed_students" = failed_students)
  
  return(student_result)
}

calculate_result(student_df)
