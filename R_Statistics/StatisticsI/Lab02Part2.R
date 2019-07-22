start=Sys.time()
x=1:6
n=1000
y=sample(x, 1000, replace =T)
end=Sys.time()
table(y)
prop.table(table(y))
brk=seq(.5,6.5,1)
hist(y,breaks=brk,col="grey",prop=T)
end-start
