d1 <- read.csv("C:/BCforestscience/MASTER DATA/working/species list_2018_coded EHedit Jan_13_18_JCedit.csv")
d2 <- read.csv("C:/BCforestscience/MASTER DATA/working/master species list_BCFloraCheckList2016.csv")

library(data.table)
df <- merge(x = d2, y = d1, by="ScientificName", all.y = TRUE)

df <- df[!is.na(df$Code.y), ]
#df <- df[!(df$start_pc == ""), ]


write.table(df, file = "C:/BCforestscience/MASTER DATA/working/species list_2018.csv",
            sep = ",", row.names = FALSE, col.names = TRUE)

########################################################################################
## END
########################################################################################