#PACKAGES:

install.packages("arules")
data()


library("arules")
library(arulesViz)
data("Groceries")

class(Groceries)
?Groceries
str(Groceries)
summary(Groceries)


#IMPORT DATASET

groceries <- read.csv("C:/Users/Rafiya/Downloads/groceries.csv")
View(groceries)
?apriori
groceries<-as(myDataFrame, "groceries") 


#USING MODEL

arules <- apriori(Groceries, parameter = list(support=0.002,confidence=0.5))
arules
#set of 1098 rules
inspect(head(sort(arules,by="lift")) )
plot(arules)
head(quality(arules))
plot(arules,method="grouped")
plot(arules,method = "scatterplot")
plot(arules,method = "grouped")
plot(arules,method = "graph")

arules <- apriori(Groceries, parameter = list(support=0.001,confidence=0.5,minlen=5))
arules
#set of 985 rules

inspect(head(sort(arules,by="lift")) )
plot(arules)
head(quality(arules))
plot(arules,method="grouped")
plot(arules,method = "scatterplot")

arules2 <- apriori(Groceries, parameter = list(support=0.001,confidence=0.5,minlen=5))
arules2
#set of 985 rules

inspect(head(sort(arules,by="lift")) )
plot(arules)
head(quality(arules))
plot(arules2,method="grouped")
plot(arules2,method = "scatterplot")

arules3 <- apriori(Groceries, parameter = list(support=0.003,confidence=0.8,minlen=5))
arules3
#set of 1rules

inspect(head(sort(arules,by="lift")) )
plot(arules)
head(quality(arules))
plot(arules3,method = "graph")
plot(arules3,method = "scatterplot")

