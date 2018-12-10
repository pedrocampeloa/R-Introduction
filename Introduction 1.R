  #LEARNING R - https://www.youtube.com/watch?v=qPk0YEKhqB8&list=PLqzoL9-eJTNBDdKgJgJzaQcY6OXmsXAHU&index=5


#1 - Introduction

x<-1:5
 y<-6:10
 plot(x,y)

 
p <- 3 + 4 
x = 3 + 4

sqrt(25) 
 
x = 25
y=9

 z=x*

pp=sqrt(z)
 y=9

# rm - deletar variáveis
    
rm(y)
y=89

rm(p)

 age=89*z
89*225
[1] 20025
rm(age,pp,x)
rm(y,z)



# Aula 2 - Criando vetores e matrizes

 p= c(1,3,5,7,9)
p
[1] 1 3 5 7 9

gender = c("male", "female")


1:7
[1] 1 2 3 4 5 6 7

h = seq(from=1, to=7, by=1/2)
[1] 1.0 1.5 2.0 2.5 3.0 3.5 4.0 4.5 5.0 5.5 6.0 6.5 7.0

 
seq(from=1, to=7, by=3)
[1] 1 4 7
seq(from=1, to=7, by=5)
[1] 1 6
 

 rep("pedrao", times=7)

 
 sex = rep(c("m", "f"), times=20)
sex

 pp = rep(seq(from=1, to=20, times=30), times=2)
#Warning message: In seq.default(from = 1, to = 20, times = 30) :  extra argument 'times' will be disregarded 

 pp
 
 
matrix(c(1,2,3,4,5,6,7,8,9), nrow=3, byrow=TRUE)

  
matrix(c(1,2,3,4,5,6,7,8,9), nrow=3, byrow=FALSE)

MAT=matrix(c(1,2,3,4,5,6,7,8,9), nrow=3, byrow=TRUE)

MAT[1,3]

MAT [2,]

# Aula 3 - Importando dados do excel

# ARQUIVOS EXCEL EM CSV.

help("read.csv")
?read.csv

#Escolher o arquivo manualmente
dados = read.csv(file.choose(), header=T,  sep=",")

#Abrir o arquivo certo
dados = read.table('C:/Pasta/Subpasta/nome.arquivo.csv', header=T,  sep=",")

dados = read.delim(file.choose(),header=T)

#ARQUIVOS EM XSXL*****

library(readxl)

data1 <- read_excel("C:/Pasta/Subpasta/arquivo.xlsx", +     sheet = "plan_stata")

data1 <- read_excel(file.choose())



# Aula 4 - Importando dados e trabalhando com dados

help(read.table)

dados = read.table('C:/Pasta/Subpasta/nome.arquivo.csv', header=T,  sep=",")

#excel (xsxl)
library(readxl)
data1 <- read_excel("C:/Pasta/Subpasta/arquivo.xlsx", +     sheet = "aba.escolhida")

#stata
library(haven)
data1 <- read_dta("C:/Pasta/Subpasta/nome.arquivo.dta")

#URL
library(readxl)
url <- "http://www.sitedosdados/data/data1"
destfile <- "data1.xls"
download.file(url, destfile)
data1 <- read_excel(destfile)

head(data1)
tail (data1)
data1[10:100]
names(data2)



# Aula 5 - Importando dados e trabalhando com variáveis 

mean(data2$Peso)
mean(data1$`DTF 2005 (A)`)

attach(data1)
mean(`DTF 2005 (A)`)
detach(data1)

class(data2$Idade)
class(data2$Sexo)
levels(data2$Sexo)

x = c(1,0,1,0,0,0,0)
clauss(x)
summary(x)

x = as.factor(x)
class(x)
summary(x)

summary(data1)


# Aula 6 - Comandos R (criando subconjuntos)

dim(data2)

attach(data2)

length(Sexo)

mean(Idade[Sexo=="Female"])
mean(Idade[Sexo=="Male"])

# =(equal sign) relaciona valores a objetos  
# == (double equal sign) significado real da igualdade matemática

femdata2 = data2[Sexo=="Female", ]
mandata2 = data2[Sexo=="Male", ]

dim(femdata2)
dim(mandata2)
summary(Sexo)

maleover10 = data2[Sexo=="Male" & Idade>10 ]

# Aula 7 - Comandos R (Lógica T/F, cbind e rbind)

Idade[1:10]
temp = Idade>15
temp[1:10]
summary(temp)

temp2 = as.numeric(Idade>15)
temp2[1:10]

MascFuman = as.numeric(Sexo=="Male" & Fuma=="Sim")
MascFuman

# CBIND - Merge de colunas - Add variável a planilha (colocando uma dummy na planilha)
data22 = cbind(data2, MascFuman)
data22

#apagar tudo
rm(list=ls())


# Aula 8 - Mudando o diretório

getwd()
setwd("C:/Users/bb/Desktop/Pessoal/Work/Programming/R")

intror_wd = "C:/Users/bb/Desktop/Pessoal/Work/Programming/R"
setwd (intror_wd)

save.image("intror.Rdata")
rm(list=ls())

load("intror.Rdata")
load(file.choose())

# Aula 9 - Fazendo um Script
# Tecla TAB para escolher a formula desejada


# Aula 10 - Instalando pacotes

help(install.packages)

install.packages("epiR")
install.packages()

library(epiR)
help(epiR)

remove.packages("epiR")

# Aula 11 - Customizando R

#Tools -> Options

