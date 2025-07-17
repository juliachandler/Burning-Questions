d <- read.csv("C:/Users/50 LBS/Desktop/MASTER DATA/working/PG_format.csv")
df <- read.csv("C:/Users/50 LBS/Desktop/MASTER DATA/working/PG_format_site info.csv")

#df2 <- df[1:5007, ]
#df4 <- df[5008:nrow(df),]
#df5 <-rbind(df3, df4)

library(data.table)
df2 <- merge(x = df, y = d, by="site", all.x = TRUE)

write.table(df2, file = "C:/Users/50 LBS/Desktop/MASTER DATA/working/PG.csv",
            sep = ",", row.names = FALSE, col.names = TRUE)

