#libraries
library(factoextra)
library(ggplot2)

#data input
bio_cca <- read.csv(".../bio_cca.csv", row.names=1)
View(bio_cca)

#performing cluster analysis
rowsum=apply(matriz, 1, sum) #sum the rows values
colsum=apply(matriz, 2, sum) #sum the columns values
new_matriz= matriz[rowsum > 0, colsum > 0] #create a new table without zero values
df = scale(new_matriz) #input the data reorganized
d = dist(df, method = "euclidean") #construction of the dissimilarity matrix
hc = hclust(d, method = "ward.D" ) # Construction of the hierarchical cluster using the Ward method of connection. This method can vary between "complete", "average", "single", "ward.D"
fviz_nbclust(df, FUN = hcut, method = "silhouette") #to seeing the optimal number of groupings
plot(hc, cex = 0.6, hang = -1, main = "Ward’s method", xlab = "", ylab = "Euclidean distance") #plotting the obtained dendrogram
rect.hclust(hc, k = 4, border = 2:5) # where k is the desired number of groups and border is the desired colors for the highlight. The indicated range must contain the number of colors equal to the desired number of groups.
sub_grp = cutree(hc, k = 4) #the k used must be the same used above
fviz_cluster(list(data = df, cluster = sub_grp)) # making graph of grouping and groups dispersion.
