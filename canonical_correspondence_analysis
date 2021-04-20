#data input

abiotic_cca <- read.csv("abiotic_data.csv", row.names=1)
View(abiotic_cca)
biot_cca <- read.csv("biotic_data.csv", row.names=1)
View(tan_cca)

#library
library(vegan)

#step by step to perform cannonical correspondence analysis
somaindsp=apply(biot_cca, 2, sum)
semraras= biot_cca[, somaindsp>10]
tan_cca_log = decostand(semraras, "log")
fullmodel=cca(biot_cca_log ~ ., abiotic_cca)
smallmodel=cca(biot_cca_log ~ 1, abiotic_cca)
fit_model= ordistep(smallmodel, scope=formula(fullmodel))
fit_model
summary(fit_model)
vif.cca(fit_model)
fit_model
fit_model=cca(formula = biot_cca_log ~ v1 + v2 + v3 + ... + vn, data = abiotic_cca)
fit_model
summary(fit_model)
anova.cca(fit_model)
anova.cca(fit_model, by="terms")
anova.cca(fit_model, by="axis")

# setting the graph output
par( mar=c(4.5,4.5,2,1) )
plot(fit_model, type="n", las=1, font=6, font.axis=6, font.lab=6, cex.lab=1.5, cex.lab=1.5)
text(fit_model, dis="cn", font=6, cex=1.5) #plota os vetores que representam as variáveis ambientais
stems = colSums(tan_cca_log)
orditorp(fit_model, "sp", priority=stems, pch = "", font=4, cex=1)
par( mar=c(4.5,4.5,2,1) )
plot(fit_model, type="n", las=1, font=6, font.axis=6, font.lab=6, cex.lab=1.5, cex.lab=1.5)
text(fit_model, dis="cn", font=6, cex=1.5)
text(fit_model, dis="sites", cex=1, font=7)
