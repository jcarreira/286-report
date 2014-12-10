library(latticeExtra)
library(waterfall)
#data(rasiel) # Example data of the waterfall package
#summary(rasiel)
#    label          value   subtotal
# 1  Net Sales       150    EBIT
# 2  Expenses       -170    EBIT 
# 3  Interest         18    Net Income
# 4  Gains            10    Net Income
# 5  Taxes            -2    Net Income

#test1
#942 records
#Average e2e: 43.3757961783439 100%
#Average s_input: 0.818471337579618 0.0188693098384728
#Average b_generated: 1.03821656050955 0.023935389133627
#Average r_tracker: 2.70912951167728 0.0624571708272149
#Average j_scheduled: 19.9225053078556 0.459300048947626

#test2
#31 records
#Average e2e: 55 100%
#Average s_input: 28.1612903225806 0.512023460410557
#Average b_generated: 0.967741935483871 0.0175953079178886
#Average r_tracker: 1.38709677419355 0.0252199413489736
#Average j_scheduled: 20.0322580645161 0.364222873900293

labels <- c('Average\nTotal', 'Socket', 'BlockGenerator', 'Receiver\nTracker', 'Scheduled\ninput', 'Last step')
values <- c(100, -2, -2, -6, -45, -45)
#values <- c(100, -51, -2, -2, -36, -9)
#subtotals <- c('A', 'B', 'C', 'D', 'E')

print(labels)


df <- data.frame(label=labels, value=values)

print(levels(df$labels))

df$label <- factor(df$label, df$label)
#df$labels <- factor(df$labels, levels = df$labels) 

summary(df)
print(df)

asTheEconomist(
  waterfallchart(value ~ label, data=df,main="Average end-to-end latency")
)
