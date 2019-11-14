getwd()
file.edit(".gitignore")
ptm <- proc.time()
DF <- read.csv("CES7072200001.csv")
CSV_READ_TIME <- (proc.time() - ptm)
CSV_READ_TIME
class(DF)
typeof(DF)
str(DF)
if (!require("data.table")) install.packages("data.table")
library("data.table")
getDTthreads()
getDTthreads(verbose=TRUE)
setDTthreads(0)
getDTthreads()
ptm <- proc.time()
DF <- fread("CES7072200001.csv", header="auto", 
            data.table=FALSE)
FREAD_READ_TIME <- (proc.time() - ptm)
FREAD_READ_TIME
class(DF)
typeof(DF)
str(DF)
names(DF)
ptm <- proc.time()
header <- read.table("CES7072200001.csv", header = TRUE,
                     sep=",", nrow = 1)
DF <- fread("CES7072200001.csv", skip=1, sep=",",
            header=FALSE, data.table=FALSE)
setnames(DF, colnames(header))
rm(header)
FREAD_READ_TIME <- (proc.time() - ptm)
FREAD_READ_TIME