library(XML)
theurl <- "http://www.imdb.com/chart/top?ref_=nv_ch_250_4"
tables <- readHTMLTable(theurl, which=1)

#Extract required columns i.e., 2 and 3 columns

IMDB <- tables[2:3]
movies <- result[1]
rating <- result[2]

df1 = data.frame(Movies=movies, Rating=rating)

##Write data to excel sheet

library(xlsx)
file = "C:/R-Data/Imdb.xlsx"
write.xlsx(df1, file, sheetName="Sheet1")

