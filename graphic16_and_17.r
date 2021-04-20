library(factoextra)
library(ggplot2)

bio_cca <- read.csv("biotic_data.csv", row.names=1)
View(bio_cca)
rowsum=apply(bio_cca, 1, sum) 
colsum=apply(bio_cca, 2, sum)
resum= bio_cca[rowsum > 0, colsum > 0]
d <- dist(scale(resum), method = "euclidean")
hc <- hclust(dd, method = "ward.D2")
#fviz_nbclust(resum, kmeans, method = "gap_stat")
fviz_dend(hc, cex = 0.9, k = 7, k_colors = "jco", type = "circular")
