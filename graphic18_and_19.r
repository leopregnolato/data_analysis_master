library(factoextra)
library(ggplot2)

tan_cca <- read.csv("data_tanato_cca.csv", row.names=1)
View(tan_cca)
rowsum=apply(tan_cca, 1, sum) 
colsum=apply(tan_cca, 2, sum)
resum= tan_cca[rowsum > 0, colsum > 0]
dd <- dist(scale(resum), method = "euclidean")
hc <- hclust(dd, method = "ward.D2")
fviz_nbclust(resum, kmeans, method = "gap_stat")
fviz_dend(hc, cex = 0.9, k = 7, k_colors = "jco", type = "circular")
