# Pattern Matching Problem

library("seqinr")
genome <- read.fasta(file = "vibrio_cholerae.fasta",
                     as.string = TRUE)

genome1 <- as.character(genome$NC_002505.1)
genome2 <- as.character(genome$NC_002506.1)

library("Biostrings")
genome1 <- DNAString(genome1)
genome1 <- DNAString(genome2)

patterns <- matchPattern('ATGATCAAG', genome1)
patterns@ranges@start
