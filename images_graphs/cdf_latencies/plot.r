data <- scan("e2e_times_30mbs_10ms")
data2 <- scan("e2e_times_90mbs_10ms")

pdf("cdf_e2e_times.pdf")

#options(scipen=5)
l <- ecdf(data2)

first <- ecdf(data)
#plot(first)
plot.ecdf(data, xlim=c(1, 2e2), main="CDF of latencies (10ms batch)", xlab="Latency (ms)", ylab="CDF", col="gray14")

#line <- plot.ecdf(data2, log="x", xlim=c(1, 2e2), main="CDF of latencies (batch 6 ms)", xlab="Latency (ms)", ylab="CDF")
lines(l, type="S", col="gray63")
#axis(1, at = c(10,100))
#ylim=c(1, 1e6))

#dev.off()
