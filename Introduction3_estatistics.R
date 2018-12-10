#Aula 1 - Distribuição Binomial
# x ~ BIN(n=20, p=1/6)

help(pbinom)
help(dbinom)
help(qbinom)
help(rbinom)


#P(X=3)
dbinom(x=3, size=20, prob=1/6)

#P(X=0) & P(X=1) & P(X=2) & P(X=3)
dbinom(x=0:3, size=20, prob=1/6)

#P(X<=3)
sum(dbinom(x=0:3, size=20, prob=1/6))
pbinom(q=3, size=20, prob=1/6, lower.tail=T)

#Aula 2 - Distribuição de Poisson
#X~POISSON(L'=7) - E(x) = VAR(x) = L' = 7

help(dpois)
help(ppois)
help(rpois) - "take a random sample from de distribution"
help(qpois) - "find quantile"

#P(X=4)
dpois(x=4, lambda=7)

#P(X=0) & P(X=1) & P(X=2) & P(X=3) & P(X=4)
dpois(x=0:4, lambda=7)

#P(X<=4)
sum(dpois(x=0:4, lambda=7))
ppois(q=4, lambda=7, lower.tail = T)

#P(X>=12)
ppois(q=12, lambda=7, lower.tail = F)


#Aula 3 - Distribuição Normal
#X~N(m=75, sd²(x)=5²) 

help(pnorm)

#P(X <= 70)
pnorm(q=70, mean=75, sd=5, lower.tail = T)
pnorm(q=70, mean=75, sd=5)

#P(X >= 85)
pnorm(q=85, mean=75, sd=5, lower.tail = F)


#Z - Normal Padronizada - X~Z~N(0,1) - P(Z>=1)
pnorm(q=1, mean=0, sd=1, lower.tail = F)

#find Q1
qnorm(p=0.25, mean=75, sd=5, lower.tail = T)

#plot x~N(75,25)
x = seq(from=55, to=95, by=0.25)
dens = dnorm(x, mean=75, sd=5)
plot(x, dens, type='l', ylab="Densidade", xlab="Distribuição X", main="Distribuição Normal X", las=1, x.axes=F)
legend(x=52, y=0.075, legend=c("Média = 75", "Variância = 25"), bty="n", adj=0)
axis(side=1,  at=c(55,65,75,85,95), labels=c(55,65,75,85,95))
abline(v=75, col="red")


#Amostra aletória
rand = rnorm(n=40, mean=75, sd=5)
hist(rand, main=X~N(75,25), xlab="Distribuição X", ylab = "Frequência", freq=F, ylim=c(0,0.08))
lines(density(rand), col="red", lwd=2)


#Aula 4 - Distribuição t-Student (Formato da normal, com caudas mais grossas)
help(pt)

#T~t(mean=0, sd=1, gl=25)
# One-slide pvalue - P(T>2.3) - teste t unidimensional
pt(q=2.3, df=25, lower.tail = F)

# Two-slide pvalue - P(T>2.3) - teste t bidimensional (=2X one-slide)
pt(q=2.3, df=25, lower.tail = F) + pt(q=-2.3, df=25, lower.tail = T)

#Quantile de t  - Achar t para um intervalo de 95% de confiança - bidimensional (2.5% cada cauda)
qt(p=0.025,df=25, lower.tail = T)

help(pf) - "Distribuição F"
help(pexp) - "Distribuição Exponencial"

