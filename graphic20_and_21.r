library(factoextra)
library(ggplot2)

bio_cca_sp <- read.csv("bio_cca_sp.csv", header=FALSE, row.names=1)
View(bio_cca_sp)
rowsum=apply(bio_cca_sp, 1, sum) 
colsum=apply(bio_cca_sp, 2, sum)
resum= bio_cca_sp[rowsum > 0, colsum > 0]
dd <- dist(scale(resum), method = "euclidean")
hc <- hclust(dd, method = "ward.D2")
# fviz_nbclust(resum, kmeans, method = "gap_stat")
fviz_dend(hc, cex = 0.9, k = 8, k_colors = "jco", type = "circular")
