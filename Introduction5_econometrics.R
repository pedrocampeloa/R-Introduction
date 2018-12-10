#AULA 1 - Linear Regression

setwd ("C:/Users/bb/Desktop/Pessoal/Work/Programming/R")
library(readxl)
data1 = read_excel("C:/Users/bb/Desktop/Pessoal/Work/Programming/R/LungCapData.xls")
attach(data1)

help(lm)

modelo = lm(LungCap ~ Age)
summary(modelo)
attributes(modelo)
modelo$coef

plot(Age, LungCap, main="SCATTER PLOT")
cor(Age, LungCap)
abline(lm(LungCap ~ Age), col="red", lwd=2)
abline(modelo, col="red", lwd=2)

#int conf standart 95%
confint(lm(LungCap ~ Age))
confint(modelo)
confint(modelo, level=0.99)



#AULA 2 - Analisando as regressões
setwd ("C:/Users/bb/Desktop/Pessoal/Work/Programming/R")
library(readxl)
data1 = read_excel("C:/Users/bb/Desktop/Pessoal/Work/Programming/R/LungCapData.xls")
attach(data1)

plot(Age, LungCap, main="SCATTER PLOT")
modelo = lm(LungCap ~ Age)
summart(modelo)
abline(modelo, col="red", lwd=2)

#verificar as MQO1-MQO4 do modelo:
plot(modelo)

par(mfrow=c(2,2))
plot(modelo)


plot(x, y)



#LINEAR REGRESSION: https://www.youtube.com/watch?v=eTZ4VUZHzxw&list=PLqzoL9-eJTNBJrvFcN-ohc5G13E7Big0e&index=2
#CREATING FUNCTIONS: https://www.youtube.com/watch?v=rQEQAZ2Xzno // https://www.youtube.com/watch?v=7_tRJD7eFck
#MATRICES: https://www.youtube.com/watch?v=2IodT3J5lFM


#AULA 

setwd ("C:/Users/bb/Desktop/Pessoal/Work/Programming/R")
library(readxl)
data1 = read_excel("C:/Users/bb/Desktop/Pessoal/Work/Programming/R/LungCapData.xls")
attach(data1)



#AULA 

setwd ("C:/Users/bb/Desktop/Pessoal/Work/Programming/R")
library(readxl)
data1 = read_excel("C:/Users/bb/Desktop/Pessoal/Work/Programming/R/LungCapData.xls")
attach(data1)





#AULA 

setwd ("C:/Users/bb/Desktop/Pessoal/Work/Programming/R")
library(readxl)
data1 = read_excel("C:/Users/bb/Desktop/Pessoal/Work/Programming/R/LungCapData.xls")
attach(data1)