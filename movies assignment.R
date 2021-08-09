#INSTALL PACKAGES:

library(arules)
library(arulesViz)

#IMPORT DATASETS:

movies <- read_excel("C:/Users/Rafiya/Desktop/movies.xlsx")
View(movies)
summary(movies)


#USING MODEL AND REMOVIND REDUDANT VALUES:

rules<-apriori(as.matrix(movies[,6:15],parameter=list(support=0.2,confidence=0.5,minlen=5)))
rules
#77 rules
inspect(head(sort(rules,by="lift")))
head(quality(rules))

#used plots
plot(rules,method = "scatterplot")
plot(rules,method = "grouped")
plot(rules,method="graph")


