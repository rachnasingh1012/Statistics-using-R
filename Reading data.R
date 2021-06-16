# Reading data

file<- read.csv("file1.txt")
file

file2 <- read_delim("textfiles/file2.txt", delim = "*")
file2

file3 <- read_tsv("textfiles/file3.txt")
file3

# Column naes

read_csv("1,3\n2,9", col_names = FALSE)
read_csv("1,3\n2,9", col_names = c("birds", "lice"))

read_csv("birds,lice\n1,3\n2,9")
read_csv("X1,X2\n1,3\n2,9",
         skip = 1,
         col_names = c("birds", "lice"))

# Guessing the readr::read_* function

headf <- function(f, n = 5) {
  cat(paste(readLines(f)[1:n],
            collapse = "\n"))
}

headf("../8/Textfiles-20210207/file1.txt")

# writing files

data <- read.csv("Textfiles-20210207/file1.txt")
fl<- write.csv(data, "Textfiles-20210207/test.txt")
fl

