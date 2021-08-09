#LIBRARIES:
library(arules)
library(arulesViz)
library(readxl)

#IMPORT DATASET:
mydata<-read_xlsx(file.choose("C:\\Users\\Rafiya\\Desktop\\Book2.xlsx"),1)

View(mydata)

#rules for apriori algorithem:
rules<-apriori(as.matrix(mydata),parameter=list(support=0.02,confidence=0.5,minlen=5))
rules
#set of 186 rules
inspect(head(sort(rules,by="lift")))
head(quality(rules))

#plots
plot(rules)
plot(rules,method = "grouped")
plot(rules,method="graph")
plot(rules,method = "scatterplot")
plot(rules,method = "matrix3D")
plot(rules,method="matrix")
plot(rules,method="graph")


#rules for apriori algorithem:
rules1<-apriori(as.matrix(mydata),parameter=list(support=0.05,confidence=0.8,minlen=4))
rules1
#set of 37 rules
inspect(head(sort(rules,by="lift")))
head(quality(rules))
plot(rules1,method = "scatterplot")
plot(rules1,method = "grouped")
plot(rules1,method = "graph")
