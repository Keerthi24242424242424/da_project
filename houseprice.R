library(ggplot2)
library(ggmap)
library(dplyr)
#to import the csv file
house.data=read.csv("D:/5TH SEM/DA/PROJECT/kc_house_data.csv",header=TRUE)
house.data=house.data[,c(1,3:21)]

#SINCE DATASET TOO BIG USE A SMALLER SET OF IT
house.data=house.data[1:5000,]
attach(house.data)
#BASIC STRUCTURE OF DATASET
glimpse(house.data)
#SUMMARY OF THE DATASET
summary(house.data)

#DISTRIBUTION OF HOUSE PRICES
pricesIn100k=house.data$price/100000
#histogram
hist(pricesIn100k,data=house.data,
     main="HOUSE PRICE DISTR.",
     xlab="PRICE in $100k",
     ylab="FREQUENCY",
     col="red",bins=10)
bedr=house.data$bedrooms
#DISTRIBUTION OF BEDROOMS
hist(bedr,data=house.data,
     main="BEDROOM DISTR.",
     xlab="NO OF BED ROOMS",
     ylab="FREQUENCY",
     col="pink",bins=10)
#DISTRIBUTION OF CONDTION OF THE HOUSE
hist(house.data$condition,data=house.data,
     main="CONDITION OF THE HOUSE.",
     xlab="CONDTION",
     ylab="FREQUENCY",
     col="RED")
#1-BAD CONDTION; 5-VERY GOOD CONDITON
hist(house.data$condition,data=house.data,
     main="CONDITION OF THE HOUSE.",
     xlab="CONDTION",
     ylab="FREQUENCY",
     col="RED")
#PRICE ACCORDING TO AREA OF THE HOUSE
sqft=house.data$sqft_lot15/100
plot(x=sqft,y=pricesIn100k,xlab="SQRFT",ylab="PRICE IN $100K",col="black")
#PRICE ACCORDING TO NO OF BEDROOMS INSIDE THE HOUSE
plot(x=house.data$bedrooms,y=pricesIn100k,xlab="No of bedrooms",ylab="PRICE IN $100K", col="green")

