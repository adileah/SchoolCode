#We simulate n repetitions of the experiment that consists of selecting 3 beads from an urn
urn=rep(1:0, c(7,3)) #rep is a useful function for patterned data (1 is for blue and 0 for yellow
n=1000#We initially simulate the experiment n times 
x=c() #we are reserving an array for the n values of X.
#we need a "for" loop 
for (i in 1:n){
y=sample(urn,3)#R will sample 3 beads from the urn
x[i]=sum(y)#number of blue balls in the i-th sample
}
table(x) #gives the frequencies of the values taken by x
prop.table(table(x)) #gives the relative frequencies of the values taken by x
brk=seq(-0.5,3.5,1) #the endpoints of the class intervals   
hist(x, breaks=brk,col="grey", prob=T) #construct the (empirical) probability histogram of X
mean(x) # compute the mean value  of the n simulated  observations of X.
sd(x) #compute the standard deviation of the n observations of X.
