# Pattern Matching Problem

library("seqinr")
genome <- read.fasta(file = "/home/ali/Nermen_bioinfo_courses/youtube/data/vibrio_cholerae.fasta",
                     as.string = TRUE)

genome1 <- as.character(genome$NC_002505.1)
genome2 <- as.character(genome$NC_002506.1)

library("Biostrings")
genome1 <- DNAString(genome1)
genome2 <- DNAString(genome2)

pattern1 <- matchPattern('ATGATCAAG', genome1)
pattern1@ranges@start

pattern2 <- matchPattern('ATGATCAAG', genome2)
pattern2@ranges@start
