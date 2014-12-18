input <- read.table("data", header=TRUE)
input2 <- read.table("data2", header=TRUE)

pdf("batchsize_vs_latency.pdf")

plot(input$x, input$y, ylim=range(c(input$y,110)), log="x")

sd_data <- c(67.13052, 41.30845, 10.90134, 9.741157, 7.1497)

segments(input$x, input$y-sd_data,input$x, input$y+sd_data)
epsilon = 0.05
segments(input$x-epsilon,input$y-sd_data,input$x+epsilon,input$y-sd_data)
segments(input$x-epsilon,input$y+sd_data,input$x+epsilon,input$y+sd_data)

#, main="End-to-end latency by Batch Window", xlab="Batch window size (ms)", ylab="End-to-end latency (ms)", xaxt="n", log="x", yaxt="n", type="l")
axis(1, at = c(5,10,20,30,40,50))
axis(2, at = c(100,150,200,250,300,350))

lines(input$x, input$y)
    par(new=TRUE)

