# 5- Clump Finding Problem

genome <- "AAAATAAAA"

k_mer <- 3
L <- 4
t <- 2
all_sub_genome <- substring(genome, first = 1:(nchar(genome)-L+1) ,
                        last = L:nchar(genome))
all_occuerance <- data.frame()
for (i_sub in all_sub_genome){
sub_dna <- substring(i_sub, first = 1:(nchar(i_sub)-k_mer + 1) ,
                   last = k_mer:nchar(i_sub))

table_count <- table(sub_dna)
all_occuerance <- rbind(all_occuerance, data.frame(table_count) )
}
result <- subset(all_occuerance, Freq >= t)
result_unique <- unique(result)
result_unique
