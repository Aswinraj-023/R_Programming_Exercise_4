#Lattice Package Plots
datasets::CO2
library(lattice)
# Scatter Plot
xyplot(conc~uptake,data=CO2,xlab = "Uptake Of Plants",ylab = "Concentration",main="Scatter Plot of Concentration and Uptake of Plants from CO2",auto.key = TRUE,scales = "free")
#Scatter Plot With multi panel
xyplot(conc~uptake|Treatment*Type,data=CO2,xlab = "Uptake Of Plants",ylab = "Concentration",main="Scatter Plot of Concentration and Uptake of Plants from CO2 with respect to treatment & type",group=Plant,auto.key = TRUE,scales = "free",pch=3)
#3D-Scatter Plot
cloud(uptake~conc*Treatment,group=Type,auto.key=TRUE,data=CO2,xlab = "Concentration",ylab = "Treatment",zlab = "Uptake",main="3D Scatter Plot of Concentration Uptake and Treatment Of Plants from CO2")
#BoxPlot
bwplot(conc~Treatment|Plant,data = CO2,xlab = "Treatment",ylab = "Concentration",main="Box Plot of Concentration & Treatment with respect to Plant Type From CO2")#,panel=panel.violin)
#Dot Plot
dotplot(uptake~Type|Plant,group=Treatment,auto.key=TRUE,data=CO2,xlab="Type",ylab="Uptake",main="Dot Plot Of Uptake & Type with respect to Treatment")
#Strip Plot 
stripplot(uptake~Type|Plant,group=Treatment,auto.key=TRUE,data=CO2,jitter.data=TRUE ,xlab="Type",ylab="Uptake",main="Strip Plot Of Uptake & Type of Plant with respect to Treatment")
#Density Plot
densityplot(~uptake,group=Type,auto.key = TRUE ,data = CO2,main="Density Plot Of CO2 Uptake")
#Histogram
histogram(~uptake,data = CO2,xlab = "Uptake",main="Histogram of CO2 uptake in Plants",breaks =4) 
