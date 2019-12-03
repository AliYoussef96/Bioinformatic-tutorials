# Frequent Words Problem

seq <- "AAAATA" 

count_pattern <- 3

seq_count <- nchar(seq)

last_k_mer <- seq_count - count_pattern + 1

all_sub_string <- substring(seq, 
                              first = 1:last_k_mer,
                            last = count_pattern:seq_count)

df_count <- table(all_sub_string)
df_count <- data.frame(df_count)

df_count$all_sub_string[df_count$Freq == max(df_count$Freq)]
