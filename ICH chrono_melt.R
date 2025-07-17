d <- read.csv("C:/BCforestscience/MASTER DATA/working/ich_chronosequence_working.csv")
nrow(d)
head(d)
str(d)
r <- d[!(d$latin_name == " "| d$latin_name == ""),] #some "empty" cells had either 1 or 2 spaces.
str(r)

library(reshape)
library(reshape2)
library(plyr)

r <-r[ ,c(9,12:16)]

mr <- melt(r, id=c("site_ID", "latin_name"))
#mr <- mr[!(mr$value == "." | mr$value == "" | mr$value == "" | mr$value == "0"),]

tmp <- ddply(mr, .(site_ID, latin_name), transform, newid = paste(site_ID, seq_along(latin_name), variable))
out <- dcast(tmp, site_ID + newid ~ latin_name, value.var = "value")

#write.table(out, file = "C:/BCforestscience/MASTER DATA/working/ich_chronosequence_working_melt&cast.csv",
#            sep = ",", row.names = FALSE, col.names = TRUE)

########################################################################################
## END
########################################################################################