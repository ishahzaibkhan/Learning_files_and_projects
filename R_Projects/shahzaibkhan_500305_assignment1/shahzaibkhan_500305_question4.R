products <- list(
  "Apples" = 50,
  "Bananas" = 30,
  "Oranges" = 25,
  "Grapes" = 15,
  "Watermelons" = 10,
  "Pineapples" = 8,
  "Strawberries" = 20,
  "Blueberries" = 12,
  "Cherries" = 5,
  "Mangoes" = 18
)

check_inventory <- function(products_list, threshold) {
  # Extracting the quantities only from the named list as a vector
  product_stock <- unlist(products_list, use.names = FALSE)
  # checking the number of products below threshold
  stock_below_threshold <- product_stock < threshold
  # Storing the names of products that are low in stock
  low_stock_products <- names(products_list)[stock_below_threshold]
  return(low_stock_products)
}
check_inventory(products, 15)