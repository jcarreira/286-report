input <- read.table("data", header=TRUE)

pdf("batchsize_vs_latency.pdf")

plot(input$x, input$y, main="End-to-end latency by Batch Window", xlab="Batch window size (ms)", ylab="End-to-end latency (ms)", xaxt="n", log="x", yaxt="n")
axis(1, at = c(6,10,20,30,40,50))
axis(2, at = c(100,150,200,250,300,350))
lines(input$x, input$y)

