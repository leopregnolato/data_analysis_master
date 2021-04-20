library(ggplot2)

ggplot(tan_HDSDt, aes(x=Station, y=S))
+geom_col(fill= "black")+ theme_classic()
+theme(axis.text.x = element_text(angle = 90,vjust = 1))
+annotate("rect", xmin = 0, xmax = 18.5, ymin = 0, ymax = 100, alpha = .2, fill = "black")
+annotate("rect", xmin = 18.5, xmax = 39.5, ymin = 0, ymax = 100, alpha = .2, fill = "darkgrey")
+labs(x = "", y = "Richness")+ theme(axis.title = element_text(size = 18), axis.text = element_text(size = 14))
+ylim(0, 100)
