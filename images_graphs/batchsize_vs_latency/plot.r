input <- read.table("data", header=TRUE)

pdf("batchsize_vs_latency.pdf")

plot(input$x, input$y, main="End-to-end latency by Batch Window", xlab="Batch window size (ms)", ylab="End-to-end latency (ms)")
lines(input$x, input$y)

