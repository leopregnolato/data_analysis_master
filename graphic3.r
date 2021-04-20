library(ggplot2)

ggplot(volume.analisado, aes(x=X, y=Vol))
+geom_col(fill= "black")+ theme_classic()
+theme(axis.text.x = element_text(angle = 90,vjust = 1))
+annotate("rect", xmin = 0, xmax = 18.5, ymin = 0, ymax = 120, alpha = .2, fill = "black")
+annotate("rect", xmin = 18.5, xmax = 39.5, ymin = 0, ymax = 120, alpha = .2, fill = "darkgrey")
+labs(x = "", y = "Sample volume analyzed (cm-³)")
+scale_y_continuous(breaks= c(10, 20, 30, 40, 50, 60, 70, 80, 90, 100, 110, 120), limits = c(0, 120))
+geom_hline(yintercept=20, linetype="dashed", color = "red", size=0.8)
+theme(axis.title = element_text(size = 18), axis.text = element_text(size = 14))
