
pdf("runtime_optimizations.pdf")

data <- c(5,2.9,1.5)

barplot(data, main="Task runtime speedup with optimizations",
        ylab="Execution time (ms)", xlab="", #col=c("darkblue","darkgreen"), 
        beside=TRUE, space=1, width=c(0.5,0.5,0.5),
        names.arg=c("W/o optimizations", "With lazy instantiation","With lazy instantiation + caching"))


#legend=c("With lazy instantiation", "W/o lazy instantiation"))
