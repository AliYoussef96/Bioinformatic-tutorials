# Pattern Matching Problem

library("seqinr")
genome <- read.fasta(file = "vibrio_cholerae.fasta",
                     as.string = TRUE)

genome1 <- as.character(genome$NC_002505.1)
genome2 <- as.character(genome$NC_002506.1)

genome1 <- toupper(genome1)
genome2 <- toupper(genome2)

k_mer1 <- gregexpr("(?=ATGATCAAG)" , genome1, perl = TRUE)
k_mer2 <- gregexpr("(?=ATGATCAAG)" , genome2, perl = TRUE)

result1 <- k_mer1[[1]]
result2 <- k_mer1[[1]]
