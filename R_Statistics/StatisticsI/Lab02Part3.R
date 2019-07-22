m=16 #specify the number of Bernoulli trails
n=1000
x=0:m #the support of a binomial(m,p)
p=.3 #the probability of success
pmf=c()
for (i in 0:m){
pmf[i+1]=choose(m,x[i+1])*p^x[i+1]*(1-p)^(m-x[i+1]) #the binomial pmf
}
y=sample(x, n, replace = T, pmf)
brk=seq(-.5,16.5,1)
table(y)
prop.table(table(y))
hist(y,breaks=brk,col="grey", prop=T)
data.frame(x,pmf)
