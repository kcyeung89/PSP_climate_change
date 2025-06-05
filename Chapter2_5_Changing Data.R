getwd()

data <- read.csv("DataSalinity_SFbar_FortPoint.csv")

summary(data)

#add a column for Fahrenheit
data$Fahrenheit <- data$WaterTemp*1.8+32

summary(data)

head(data)

#subset
FortPointData <- subset(data, Location == "FortPoint")

#dimension of the dataset
dim(FortPointData)
dim(data)
