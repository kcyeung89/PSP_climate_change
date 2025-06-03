#setting the working directory
getwd()

getwd()

# Creating an object for the csv file
beach <- read.csv("beach_data (1).csv")

#Standard Deviation
sd(beach$Weight)

#Plotting "Weight" column using the barplot function, 
# $ means to select the column from the beach file
barplot(beach$Weight)

# names = to show the label, col = to set the color, 
# cex.names = for the size and las = for making the lable verticle.
barplot(beach$Weight, names = beach$Sample)
barplot(beach$Weight, names = beach$Animal, col = "lightblue", cex.names = 0.5, las = 2)

# avo() to compare two sets of data and finding the p value;
# summary() to get a basic stats for the dataset
aov(beach$Weight ~ beach$Animal)
summary(aov(beach$Weight ~ beach$Animal))
summary(aov(beach$Weight ~ beach$Zone))


