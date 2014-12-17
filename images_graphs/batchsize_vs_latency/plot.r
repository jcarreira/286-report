input <- read.table("data", header=TRUE)
input2 <- read.table("data2", header=TRUE)

pdf("batchsize_vs_latency.pdf")

plot(input$x, input$y, ylim=range(c(input$y,input2$y)), log="x")
#, main="End-to-end latency by Batch Window", xlab="Batch window size (ms)", ylab="End-to-end latency (ms)", xaxt="n", log="x", yaxt="n", type="l")
axis(1, at = c(5,10,20,30,40,50))
axis(2, at = c(100,150,200,250,300,350))

lines(input$x, input$y)
    par(new=TRUE)

plot(input2$x, input2$y, axes=FALSE, xlab="", ylab="", ylim=range(c(input$y,input2$y)), log="x")
lines(input2$x, input2$y)

