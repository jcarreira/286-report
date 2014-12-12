data <- scan("e2e_times")

pdf("cdf_e2e_times.pdf")

options(scipen=5)
plot.ecdf(data, log="x", xlim=c(1, 1e5), main="CDF of latencies (batch 6 ms)", xlab="Latency (ms)", ylab="CDF")
axis(1, at = c(10,100,1000,10000,100000))
#ylim=c(1, 1e6))

dev.off()
