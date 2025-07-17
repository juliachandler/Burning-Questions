d <- read.csv("C:/BCforestscience/MASTER DATA/working/stuart river_melt.csv")
head(d)
str(d)

library(reshape)
library(reshape2)
library(plyr)

mr <- melt(d, id=c("latin_name","code"))
tmp <- ddply(mr, .(latin_name, code), transform, newid = paste(latin_name, seq_along(code), variable))
out <- dcast(tmp, latin_name + newid ~ code, value.var = "value")

library(stringr)
out$id <- str_sub(out$newid,-3,-1)
df <- out[,-c(1,2)]
df[is.na(df)] <- 0

stuart<- df %>% group_by(id) %>% summarise_each(funs(sum))

write.table(stuart, file = "C:/BCforestscience/MASTER DATA/working/stuart_river_melt&cast.csv",
            sep = ",", row.names = FALSE, col.names = TRUE)

########################################################################################
## END
########################################################################################