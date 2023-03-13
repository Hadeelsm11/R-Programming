library(ggplot2)
library(lattice)

adeaths<- read.table('/Users/hadeelmusallam/Downloads/accidental deaths .txt', sep= ",", header = T)


#basic plot
plot(adeaths$drivers, adeaths$deaths, main = "Drivers and Death Rates", 
     xlab = "Number of Drivers", ylab = "Number of Deaths", pch = 19, col = "red", bg= "black", 
     )
grid()

##ggplot
ggplot(adeaths, aes(drivers, deaths))+ 
  geom_point(col = adeaths$temp)+ 
  geom_text(aes(label = X,), hjust=1.1, vjust= -.6)+
  ggtitle("Drivers and Death Rates by State")+ 
  labs( x= "Number of Drivers", y = "Number of Deaths") + 
  theme(text = element_text(size = 14, family = "PT Serif"))

#lattice
xyplot(deaths ~ drivers | X, adeaths, 
       grid = T, main= "Drivers and Death Rates by State", 
       xlab = "Number of Drivers", 
       ylab = "Number of Deaths"
       )
  
 
  


