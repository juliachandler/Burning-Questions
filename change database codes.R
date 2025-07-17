df <- read.csv("C:/BCforestscience/MASTER DATA/working/META_veg_18_01_14.csv")

names(df)
#column 239 = "CERA_SP.1" (this refers to CERATADON - nonvascular)/ column 110 = "CERA_SP" (this refers to CERASTIUM)
#column 324 = "GENTAMA.1" / column 291 = "GENTAMA"

#install.packages('stringi')
#library(stringi)


env <- df[ , 1:17]
df1 <- df[ , 18:285]
df12 <- stri_sub(names(df1),1,-3)   #df1 <- names(df1) = sub("_.*","",names(df1))
colnames(df1) <- df12

wo_cv <- df[ ,286:445]

d1 <- data.frame(env, df1, wo_cv)

names(d1)

write.table(d1, file = "C:/BCforestscience/MASTER DATA/working/db_veg codes.csv",
            sep = ",", row.names = FALSE, col.names = TRUE)
            
########################################################################################
## END
########################################################################################




where(df == d1)substite(d1, )






env <- df[ , 1:17]
df1 <- df[ , 18:238]
   df12 <- stri_sub(names(df1),1,-3)   #df1 <- names(df1) = sub("_.*","",names(df1))
   colnames(df1) <- df12
df2cera <- df[ , 239]
df3 <- df[ , 240:323]
  df32 <- stri_sub(names(df3),1,-3)
  colnames(df3) <- df32
df4gent <- df[ , 324]
df5 <- df[ , 325:385]
  df52 <- stri_sub(names(df5),1,-3)
  colnames(df5) <- df52
wo_cv <- df[ ,386:445]

d1 <- data.frame(env, df1, df2cera, df3, df4gent, df5, wo_cv)

names(d1)
