#Exercise Week03


#1 -------------------------------------------------------------------------
d <- 1
m <- 21

convertdegree <- function(x){
  rad <- pi*(d + m/60)/180
  result <- paste(rad, "rad")
  return (result)
}

d <- 1
m <- 21
rad <- pi*(d + m/60)/180
rad

m2 <- 1
errorrad <- pi*( m2/60)/180
errorrad


#fractional uncertainty for length
#length 2550 +- 25 m

frac <- 25/2550*100
frac

#calculating the height
height <- sin(rad) * 2550
height

print(paste0("The height is", height, "with an error of", frac))



# 2 -----------------------------------------------------------------------
dif <- 25.53 - 29.66
dur <- abs(dif)



max <- 25.53 - 29.66 + 0.1 + 0.2
min <- 25.53 - 29.66 + 0.1 - 0.2

print(paste0("The volcanic activity had a likely duration of", dur , "years"))
print(paste0("The maximum deviation is", max, "and the minimum", min))

# 3 -----------------------------------------------------------------------

setwd("C:/Users/zehal/Desktop/Studium/Master/3.Semester/R Kurs/Vorlesungen/errors-AlexZ275")
getwd()

relativePath <- "Week03_ex3_eqscals"
Week03_ex3_eqscals <- read.table("Week03_ex3_eqscals.txt", header = FALSE, sep="" ) #txt Datei einlesen
View(Week03_ex3_eqscals)

names(Week03_ex3_eqscals)[names(Week03_ex3_eqscals) == "V1"] <- "X(km)"
names(Week03_ex3_eqscals)[names(Week03_ex3_eqscals) == "V2"] <- "r(m)"
names(Week03_ex3_eqscals)[names(Week03_ex3_eqscals) == "V3"] <- "Mo(nm)"

# a -----------------------------------------------------------------------

radius <- Week03_ex3_eqscals$`r(m)`
funcr <- c("mean", "median", "standard deviation", "MAD")
resr <- c(mean(radius), median(radius), sd(radius), mad(radius))
datar <- data.frame(funcr, resr)
View(datar)

moment <- Week03_ex3_eqscals$`Mo(nm)`
funcm <- c("mean", "median", "standard deviation", "MAD")
resm <- c(mean(moment), median(moment), sd(moment), mad(moment))
datam <- data.frame(funcr, resr)
View(datam)

# b -----------------------------------------------------------------------
windows()
boxplot(Week03_ex3_eqscals$`r(m)`)

windows()
boxplot(Week03_ex3_eqscals$`Mo(nm)`)

#no obvious outliers


# c -----------------------------------------------------------------------


