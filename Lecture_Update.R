
#Date 08/04/2023 
1+2
a<-5
a

a<-c(5,6,7,8)
a
class(a)

b<-c("A","B","C")
b
class(b)


df<-read.csv("C:/Users/hp/OneDrive/Desktop/R Lectures/adult_salary_dataset_Decision Tree Practice(Analysis).csv")
View(df)

df=datasets::airquality
df
View(df)

#Top 10 entries
head(df,10)

#Bottom 10 entries
tail(df,10)

#We want first 2 columns
df[,c(1,2)]
View(df[,c(1,2)])

#We want delete 6 columns
df[,-c(6)]
View(df[,-6])
df1<-df[,-c(6)]

#Summary
summary(df)

#If we want summary in tabular form
View(summary(df))

#If we want particau;ar column
df$Ozone
View(df$Ozone)

#Data visualization
plot(df$Ozone)

#To check relationship between two variable(Wind and Temperature)
plot(df$Wind,df$Temp)
plot(df$Wind,df$Temp,type = "l") # To create line plot
plot(df$Wind,df$Temp,type = "p") # To create Point plot
plot(df) # To create plot for one variables vs all variables
plot(df$Ozone,xlab = "No instance",ylab = "Ozone level") # Can give label for each variable
plot(df$Ozone,xlab = "No instance",ylab = "Ozone level" ,main = "Ozone concentartaion") #Add Title as well
plot(df$Ozone,xlab = "No instance",ylab = "Ozone level" ,main = "Ozone concentartaion",col='red') #Add color as well

#Bar Plot_It must use to check single variable has normally distributed or not--just for checking
barplot(df$Ozone) #check for all normal plot things
barplot(df$Ozone,col = 'Green')

#Histogram
hist(df$Temp) #check for all normal plot things
hist(df$Temp, col='Red')

#Box Plot
boxplot(df$Ozone) #check for all normal plot things
boxplot.stats(df$Ozone)$out # we can get outlier values as well
boxplot(df[,c(1:4)],main ="Multibox plot")# for multibox plot _excluding 5 & 6 columns

#To calculate Standard deviation
sd(df$Ozone,na.rm = TRUE) # To calculate Standard deviation by removing blank value

#To check skewness(It is not available in R .We need to installed the package)
library(moments)
skewness(df$Ozone ,na.rm = TRUE)
kurtosis(df$Ozone,na.rm = TRUE)



