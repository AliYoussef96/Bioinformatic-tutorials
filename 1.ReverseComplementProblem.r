# Reverse Complement Problem

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
