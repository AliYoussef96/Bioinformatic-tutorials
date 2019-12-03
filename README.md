# Bioinformatică tutorials

## 1.Reverse Complement Problem

```R
seq <- "ACTGTTTCAGT"
seq_new <- strsplit(seq, "")[[1]]

comp <- c()
for (i in seq_new){
  if (i == "A"){
    comp <- c(comp, "T")
  }else if (i == "T"){
    comp <- c(comp, "A")
  }else if (i == "C"){
    comp <- c(comp, "G")
  }else if (i == "G"){
    comp <- c(comp, "C")
  }
}

rev_comp <- rev(comp)
rev_comp_new <- paste0(rev_comp, collapse = "")

print (rev_comp_new)
```
## 2.Counting Words Problem

```R
seq <- "TTTATTT"
k_mer <- gregexpr("(?=TT)" , seq, perl = TRUE)
result <- k_mer[[1]]
length(result)
```
## 3.Frequent Words Problem

```R
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
```
