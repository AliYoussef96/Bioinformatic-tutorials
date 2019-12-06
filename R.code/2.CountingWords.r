  # Counting words
  
  seq <- "TTTATTT"
  
  k_mer <- gregexpr("(?=TT)" , seq, perl = TRUE)
  
  result <- k_mer[[1]]
  
  length(result)
