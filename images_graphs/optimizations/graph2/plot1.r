
pdf("task_deser_micro.pdf")

data <- matrix(c(2.1,1.5,0.035,0.011,0.12,0.013), ncol=2, nrow=3)

barplot(data, main="Effect of optimizations on task deserialization",
        ylab="Time (s)", xlab="", col=c("darkblue","darkgreen", "darkred"), 
        beside=FALSE, space=10,
        names.arg=c("Eager instantiation and broadcast", "Lazy instantiation and cache"), 
        legend=c("Update Dependencies","Deserialize Binary","Other"))
