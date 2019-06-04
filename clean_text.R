library(tm)

clean_text <- function(x){
  stopwords_list <- c(stopwords("english"),"llc","l.l.c.","pllc","p.l.l.c","md","m.d.","pc","p.c.","corp","corporation","inc","i.n.c.","co","co.","at","mdobgyn","dmd"
                      ,"mddns","mdpc","mdadolescent medicine") 
  x1 <- tolower(x)
  x2 <- removeWords(x1,stopwords_list)
  x3 <- removePunctuation(x2, preserve_intra_word_contractions = FALSE, preserve_intra_word_dashes = FALSE)
}

sample <- c("WOrDs","EXAMPLE","Doctors MD")

sample1 <- clean_text(sample)

script.dir <- dirname(sys.frame(1)$ofile)
