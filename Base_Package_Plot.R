# 1) Base Package  Plots
datasets::cars
?cars
# Scatter Plot
plot(cars$speed,cars$dist,xlab="Speed",ylab="Distance",main="Scatter Plot of Speed and distances of cars", col=rainbow(length(cars$speed)))
#Bar Plot
s<-table(cars$speed)
s
barplot(s,xlab = "Speed (mph)",ylab = "Frequency",main = "Bar chart of Frequency of Speed(mph) of cars",col = rainbow(length(s)),legend=s)
#Histogram  
d<-table(cars$dist)
d
hist(d,xlab="Distance (Km)",ylab = "Frequency",main = "Histogram of Frequency of Distance",col =c("grey"),breaks=5,border = "green",xlim = c(0,5))
#Line Plot
plot(cars,type="l",xlab="Speed(mph)",ylab="Distance(km)",main="Line Chart for Speed & Distance of cars",col="red")
     