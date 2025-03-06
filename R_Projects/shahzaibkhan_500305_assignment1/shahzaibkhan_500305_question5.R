movies <- list(
  "The Lion King" = 9.0,
  "Frozen" = 7.5,
  "Toy Story" = 8.3,
  "Aladdin" = 9.2,
  "Beauty and the Beast" = 8.5,
  "Finding Nemo" = 8.1,
  "Moana" = 7.8,
  "Zootopia" = 8.7,
  "Coco" = 9.1,
  "Mulan" = 8.4
)

movie_rating <- function(movie_list) {
  # Extracting the ratings only from the named list as a vector
  movie_ratings <- unlist(movie_list, use.names = FALSE)
  
  highest_rating <- max(movie_ratings)
  average_rating <- mean(movie_ratings)
  
  # using which function to identify the index of the highest rating from the movies rating
  index_top_movie <- which(movie_ratings == highest_rating)
  
  # Fetching only the name of top rated movie
  top_movie <- names(movie_list)[index_top_movie]
  
  return(list(
    "highest_rated_movie" = top_movie,
    "average_rating" = average_rating
  ))
}
movie_rating(movies)
