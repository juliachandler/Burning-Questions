d <- read.csv("C:/BCforestscience/MASTER DATA/working/ich_chronosequence_site info_LAT_LONG Converted.csv")
df <- read.csv("C:/BCforestscience/MASTER DATA/working/ich_chronosequence_working_format_add site info.csv")

library(data.table)
df3 <- merge(x = df, y = d, by="siteID", all.x = TRUE)
write.table(df3, file = "C:/BCforestscience/MASTER DATA/working/ich_chronosequence.csv",
            sep = ",", row.names = FALSE, col.names = TRUE)

########################################################################################
## END
########################################################################################