airquality <-datasets::airquality

##top 10 rows and last 10 rows
head (airquality,10)
tail(airquality,10)

######columns
airquality[50:60,c(1,2)]

df<-airquality[,-6]

#descriptive statistics
#1
summary(airquality[,c(4,5)])

airquality$Temp
airquality$Wind
airquality$Ozone





#########summary of data######

#################
#visualiation
plot(airquality$Wind)

plot(airquality$Temp,airquality$Ozone,type="p")

plot(airquality)

#points and lines
plot(airquality$Wind,  type= "l") # p:point l:lines,b: both

plot(airquality$Wind, xlab = 'Ozone concentration',
     ylab = 'no of instactances',main = 'Ozone level in NY city',
     col = 'blue',type='l')



#horinzontal bar plot
barplot(airquality$Ozone,main = 'Ozone concentration in air',
        ylab = 'ozone level',col = 'blue',hori = F,axes = T)

#histogram
hist(airquality$Temp)
hist(airquality$Temp,
     main = 'solar radiation value in air',
     xlab = 'solar rad.', col = 'blue')

#single box plot
boxplot(airquality$wind,main="boxplot")
boxplot.stats(airquality$Wind)$out

#multiple box plots
boxplot(airqulity[,1:4],main='multiple')

