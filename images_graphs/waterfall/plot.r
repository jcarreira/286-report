library(latticeExtra)
library(waterfall)

data <- read.table("data", header=TRUE)

df <- data.frame(label=data$labels, value=data$values)

print(levels(df$labels))

df$label <- factor(df$label, df$label)

summary(df)
print(df)

asTheEconomist(
  waterfallchart(value ~ label, data=df,main="Average end-to-end latency (ms)")
)
