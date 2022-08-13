quakes <-datasets::quakes

##top 10 rows and last 10 rows
head (quakes,10)
tail(quakes,10)

##columns
quakes[50:60,c(1,2)]

i
#descriptive characteristics
#1
summary(quakes[c(4,5)])

quakes$lat
quakes$long
quakes$mag







########summary of data####

#################
#visualiation
plot(quakes$lat)

plot(quakes$lat,quakes$long,type="p")

plot(quakes)

#points and lines
plot(quakes$long,  type= "l") # p:point l:lines,b: both

plot(quakes$long, xlab ='earth quakes concentration',
     ylab = 'no of insctances',main = 'earth quakes in NY city',
     col = 'green',type='l')

#horizontal bar plot
barplot(quakes$mag,main = 'mag earth quakes on land',
        ylab = 'mag level',col = 'blue',hori = F,axes  = T)

#histogram
hist(quakes$lat)
hist(quakes$lat,
     main = 'quakes on land',
     xlab = 'quakes on land', col ='blue')

#single box plot
boxplot(quakes$long,main="boxplot")
boxplot.stats(quakes$long)$out

#multiple box plots
boxplot(quakes[,1:4],main='')