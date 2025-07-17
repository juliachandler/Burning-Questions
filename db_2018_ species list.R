d1 <- read.csv("C:/BCforestscience/MASTER DATA/working/db_species codes.csv")
d2 <- read.csv("C:/BCforestscience/MASTER DATA/working/master species list_BCFloraCheckList2016.csv")

#library(data.table)
df <- merge(x = d2, y = d1, by="Code", all.y = TRUE)

write.table(df, file = "C:/BCforestscience/MASTER DATA/working/db_species list_2018.csv",
            sep = ",", row.names = FALSE, col.names = TRUE)

########################################################################################
## END
########################################################################################