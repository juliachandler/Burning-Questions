d <- read.csv("C:/BCforestscience/MASTER DATA/working/master species list_18_01_10_thesis.csv")
df <- read.csv("C:/BCforestscience/MASTER DATA/working/master species list_BCFloraCheckList2016.csv")

library(data.table)
df3 <- merge(x = df, y = d, by="Code", all.x = TRUE)
write.table(df3, file = "C:/BCforestscience/MASTER DATA/working/species list_merge_2018.csv",
            sep = ",", row.names = FALSE, col.names = TRUE)

#setdiff(df,df3) to check differences in columns

coded <- d <- read.csv("C:/BCforestscience/MASTER DATA/working/master species list_coded.csv")
df4 <- merge(x = d, y = coded, by="Code", all.x = TRUE)

write.table(df4, file = "C:/BCforestscience/MASTER DATA/working/species list_2018_coded.csv",
            sep = ",", row.names = FALSE, col.names = TRUE)

########################################################################################
## END
########################################################################################