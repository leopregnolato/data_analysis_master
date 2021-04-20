library(vegan)

abiotic_cca <- read.csv("abiotic_cca.csv", row.names=1)
View(abiotic_cca)
bio_cca <- read.csv("bio_cca.csv", row.names=1)
View(bio_cca)

somaindsp=apply(bio_cca, 2, sum)
semraras= bio_cca[, somaindsp>10]
bio_cca_log = decostand(semraras, "log")
fullmodel=cca(bio_cca_log ~ ., abiotic_cca)
smallmodel=cca(bio_cca_log ~ 1, abiotic_cca)
fit_model= ordistep(smallmodel, scope=formula(fullmodel))
fit_model
summary(fit_model)
vif.cca(fit_model)
fit_model
fit_model= cca(formula = bio_cca_log ~ C.N + Ba + Mud + P + Sand, data = abiotic_cca)
fit_model
summary(fit_model)
anova.cca(fit_model)
anova.cca(fit_model, by="terms")
anova.cca(fit_model, by="axis")

#graphic
par( mar=c(4.5,4.5,2,1) )
plot(fit_model, type="n", las=1, font=6, font.axis=6, font.lab=6, cex.lab=1.5, cex.lab=1.5)
text(fit_model, dis="cn", font=6, cex=1.5)
stems = colSums(bio_cca_log)
orditorp(fit_model, "sp", priority=stems, pch = "", font=4, cex=1)

par( mar=c(4.5,4.5,2,1) )
plot(fit_model, type="n", las=1, font=6, font.axis=6, font.lab=6, cex.lab=1.5, cex.lab=1.5)
text(fit_model, dis="cn", font=6, cex=1.5)
text(fit_model, dis="sites", cex=1, font=7)
