#Aula 1 - 1-Sample Teste t - Apropriado para analisar 1 população
setwd ("C:/Users/bb/Desktop/Pessoal/Work/Programming/R")
library(readxl)
data1 = read_excel("C:/Users/bb/Desktop/Pessoal/Work/Programming/R/LungCapData.xls")
attach(data1)

help(t.test)
boxplot(LungCap)

# Unicaudal com IC = 95% / H1: M=8 vs H1: M<8 
t.test(LungCap,mu=8, alternative="less", conf.level = 0.95)
t.test(LungCap,mu=8, alt="less", conf = 0.95)


# Bicaudal com IC = 95% / H1: M=8 vs H1: M<8 ou M>8 - DEFAULT IN R
t.test(LungCap,mu=8, alt="two.sided", conf = 0.95)
t.test(LungCap,mu=8, conf = 0.99)

TEST = t.test(LungCap,mu=8, alt="two.sided", conf = 0.95)
attributes(TEST)
TEST$conf.int
TEST$p.value



#Aula 2 - Two-Sample T test - Apropriado para analisar 2 populações / y=f(x) - x variável de categoria ("sim", "nao")
setwd ("C:/Users/bb/Desktop/Pessoal/Work/Programming/R")
library(readxl)
data1 = read_excel("C:/Users/bb/Desktop/Pessoal/Work/Programming/R/LungCapData.xls")
attach(data1)

help(t.test)
boxplot(LungCap ~ Smoke)

#Ho: Mns(mean no-smokers) = Ms / Teste Vicaudal (Mu=Mns-Ms=0) / Assumindo var diferentes
t.test(LungCap~Smoke,mu=0, alt="two.sided", conf = 0.95, var.eq=F, paired=F)
t.test(LungCap~Smoke,mu=0)
t.test(LungCap[Smoke=="no"], LungCap[Smoke=="yes"])

#testar igualdade das variancias - "var.eq==T" // Levene's test
var(LungCap)
var(Smoke)

install.packages(car)
library(car)
leveneTest(LungCap~Smoke)



#Aula 3 - 
setwd ("C:/Users/bb/Desktop/Pessoal/Work/Programming/R")
library(readxl)
data1 = read_excel("C:/Users/bb/Desktop/Pessoal/Work/Programming/R/LungCapData.xls")
attach(data1)





#Aula 4 - 
setwd ("C:/Users/bb/Desktop/Pessoal/Work/Programming/R")
library(readxl)
data1 = read_excel("C:/Users/bb/Desktop/Pessoal/Work/Programming/R/LungCapData.xls")
attach(data1)




#Aula 5 - 
setwd ("C:/Users/bb/Desktop/Pessoal/Work/Programming/R")
library(readxl)
data1 = read_excel("C:/Users/bb/Desktop/Pessoal/Work/Programming/R/LungCapData.xls")
attach(data1)


#Aula 6 - 

