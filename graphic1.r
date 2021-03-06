library(ggplot2)
ggplot(bio_sdom, aes(x=St, y=Frequency)) 
+annotate("rect", xmin = 0, xmax = 18.5, ymin = -10, ymax = 100, alpha = .2, fill = "black")
+annotate("rect", xmin = 18.5, xmax = 39.5, ymin = -10, ymax = 100, alpha = .2, fill = "darkgrey")
+ annotate("rect", xmin = 0, xmax = 58, ymin = -25, ymax = -10, color="black", fill = "white")
+geom_smooth(method="loess", aes(fill=Specie, color=Specie)) + theme_linedraw() 
+ylim(-25, 100)+ xlim(0, 58) 
+labs(x = "Areas", y = "Occurrence of frequency (%)")
+theme(legend.title = element_blank(), legend.text = element_text(face = "italic"))
+annotate("text", x = 1, y = -17.5, angle=90,label = "A1-R1")
+annotate("text", x = 2, y = -17.5, angle=90,label = "A1-R2")
+annotate("text", x = 3, y = -17.5, angle=90,label = "A1-R3")
+annotate("text", x = 4, y = -17.5, angle=90,label = "A2-R1")
+annotate("text", x = 5, y = -17.5, angle=90,label = "A2-R2")
+annotate("text", x = 6, y = -17.5, angle=90,label = "A2-R3")
+annotate("text", x = 7, y = -17.5, angle=90,label = "B1-R1")
+annotate("text", x = 8, y = -17.5, angle=90,label = "B1-R2")
+annotate("text", x = 9, y = -17.5, angle=90,label = "B1-R3")
+annotate("text", x = 10, y = -17.5, angle=90,label = "B2-R1")
+annotate("text", x = 11, y = -17.5, angle=90,label = "B2-R2")
+annotate("text", x = 12, y = -17.5, angle=90,label = "B2-R3")
+annotate("text", x = 13, y = -17.5, angle=90,label = "B3-R1")
+annotate("text", x = 14, y = -17.5, angle=90,label = "B3-R2")
+annotate("text", x = 15, y = -17.5, angle=90,label = "B3-R3")
+annotate("text", x = 16, y = -17.5, angle=90,label = "B4-R1")
+annotate("text", x = 17, y = -17.5, angle=90,label = "B4-R2")
+annotate("text", x = 18, y = -17.5, angle=90,label = "B4-R3")
+annotate("text", x = 19, y = -17.5, angle=90,label = "C1-R1")
+annotate("text", x = 20, y = -17.5, angle=90,label = "C1-R2")
+annotate("text", x = 21, y = -17.5, angle=90,label = "C1-R3")
+annotate("text", x = 22, y = -17.5, angle=90,label = "C2-R1")
+annotate("text", x = 23, y = -17.5, angle=90,label = "C2-R2")
+annotate("text", x = 24, y = -17.5, angle=90,label = "C2-R3")
+annotate("text", x = 25, y = -17.5, angle=90,label = "C3-R1")
+annotate("text", x = 26, y = -17.5, angle=90,label = "C3-R2")
+annotate("text", x = 27, y = -17.5, angle=90,label = "C3-R3")
+annotate("text", x = 28, y = -17.5, angle=90,label = "C4-R1")
+annotate("text", x = 29, y = -17.5, angle=90,label = "C4-R2")
+annotate("text", x = 30, y = -17.5, angle=90,label = "C4-R3")
+annotate("text", x = 31, y = -17.5, angle=90,label = "D1-R1")
+annotate("text", x = 32, y = -17.5, angle=90,label = "D1-R2")
+annotate("text", x = 33, y = -17.5, angle=90,label = "D1-R3")
+annotate("text", x = 34, y = -17.5, angle=90,label = "D2-R1")
+annotate("text", x = 35, y = -17.5, angle=90,label = "D2-R2")
+annotate("text", x = 36, y = -17.5, angle=90,label = "D2-R3")
+annotate("text", x =37, y = -17.5, angle=90,label = "D3-R1")
+annotate("text", x = 38, y = -17.5, angle=90,label = "D3-R2")
+annotate("text", x = 39, y = -17.5, angle=90,label = "D3-R3")
+annotate("text", x = 40, y = -17.5, angle=90,label = "E1-R1")
+annotate("text", x = 41, y = -17.5, angle=90,label = "E1-R2")
+annotate("text", x = 42, y = -17.5, angle=90,label = "E1-R3")
+annotate("text", x = 43, y = -17.5, angle=90,label = "E2-R1")
+annotate("text", x = 44, y = -17.5, angle=90,label = "E2-R2")
+annotate("text", x = 45, y = -17.5, angle=90,label = "E2-R3")
+annotate("text", x = 46, y = -17.5, angle=90,label = "E3-R1")
+annotate("text", x = 47, y = -17.5, angle=90,label = "E3-R2")
+annotate("text", x = 48, y = -17.5, angle=90,label = "E3-R3")
+annotate("text", x = 49, y = -17.5, angle=90,label = "E4-R1")
+annotate("text", x = 50, y = -17.5, angle=90,label = "E4-R2")
+annotate("text", x = 51, y = -17.5, angle=90,label = "E4-R3")
+annotate("text", x = 52, y = -17.5, angle=90,label = "E5-R1")
+annotate("text", x = 53, y = -17.5, angle=90,label = "E5-R2")
+annotate("text", x = 54, y = -17.5, angle=90,label = "E5-R3")
+annotate("text", x = 55, y = -17.5, angle=90,label = "E6-R1")
+annotate("text", x = 56, y = -17.5, angle=90,label ="E6-R2")
+annotate("text", x = 57, y = -17.5, angle=90,label ="E6-R3")

grafico=ggplot(data = bio_sdom, aes(x = St, y = Frequency))
+annotate("rect", xmin = 0, xmax = 18.5, ymin = -10, ymax = 100, alpha = .2, fill = "black")
+annotate("rect", xmin = 18.5, xmax = 39.5, ymin = -10, ymax = 100, alpha = .2, fill = "darkgrey")
+geom_point(aes(color = Specie))+geom_smooth(method = "loess", aes(fill= Specie, color= Specie))
+annotate("rect", xmin = 0, xmax = 58, ymin = -25, ymax = -10, color="black", fill = "white") 
+theme_linedraw() +ylim(-25, 100)+ xlim(0, 58) +labs(x = "Areas", y = "Occurrence of frequency (%)")
+theme(legend.title = element_blank(), legend.text = element_text(face = "italic"))+theme(text = element_text(size=17))


