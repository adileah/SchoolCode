#Simulation using the pmf
start=Sys.time() #We use an internal stop watch to measure the efficiency of the algorithm 
x=c(1, 2, 3, 4, 5, 6) #the support of the discrete distribution
pmf=c((1/6), (1/6), (1/6), (1/6), (1/6), (1/6)) #the probability mass function p_i=probability of observing x_i  
n=1000 #specify the number of simulated observations from the pmf
u = runif(n, min = 0, max = 1) #We select n random numbers between 0 and 1. 
y=c() #we declare an array that will contain the simulated observations 
for (i in 1:n){
j=1
while(u[i] > sum(pmf[1:j]))
j = j + 1
end
y[i]=x[j]
}
table(y) #gives the frequencies of the values taken by x
prop.table(table(y)) #gives the relative frequencies of the values taken by x
brk=seq(.05,6.5,1)
hist(y, breaks=brk, col="grey", prob=T) #construct the (empirical) probability histogram of X
end=Sys.time() #disable the stop watch
end-start #elapsed time

