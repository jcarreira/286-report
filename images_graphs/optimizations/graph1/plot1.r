
pdf("lazy_micro.pdf")

data <- matrix(c(5.9, 3.4, 33.9, 12.1), ncol=2, nrow=2)

barplot(data, main="Micro-Benchmark of Lazy Instantiation\n(one stage with many tasks)",
        ylab="Execution time (s)", xlab="", col=c("darkblue","darkgreen"), 
        beside=TRUE,
        names.arg=c("10K tasks",
           "100k tasks"), legend=c("With lazy instantiation", "W/o lazy instantiation"))
