library(ggplot2)
library(gridExtra)
library(GGally)

data <- read.csv('RFM_final.csv',header=TRUE)
data <- subset(data, select = -Dt_Customer)
data$Kidhome <- as.factor(data$Kidhome)
data$Teenhome <- as.factor(data$Teenhome)
data$Childhome <- as.factor(data$Childhome)
data$Education <- as.factor(data$Education)


ggplot(data,aes(x=Education,fill=Education)) +
  geom_bar(stat = "count") +
  geom_text(stat = "count", aes(label = ..count..), vjust = -0.5)

ggplot(data,aes(x=Kidhome,fill=Kidhome)) +
  geom_bar(stat = "count") +
  geom_text(stat = "count", aes(label = ..count..), vjust = -0.5)

ggplot(data, aes(x=Type,fill=Education)) +
  geom_bar(stat = "count") +
  scale_x_discrete(limits = c( "Risk","Low", "Mid", "High"))

ggplot(data, aes(x=Type,fill=Marital_Status)) +
  geom_bar() +
  scale_x_discrete(limits = c( "Risk","Low", "Mid", "High"))

ggplot(data, aes(x=Type,y=Income)) +
  geom_jitter(aes(color=Education),alpha=0.4) + 
  geom_boxplot() +
  scale_x_discrete(limits = c( "Risk","Low", "Mid", "High")) 



ggplot(data,aes(x=Income,y=Monetary,color=Type)) +
  geom_point() +
  scale_color_discrete(limits = c("Risk","Low",  "Mid", "High"))

ggplot(data,aes(x=Income,y=Frequency,color=Type)) +
  geom_point() +
  scale_color_discrete(limits = c("Risk","Low", "Mid", "High"))

ggplot(data,aes(x=Income,y=Recency,color=Type)) +
  geom_point() +
  scale_color_discrete(limits = c( "Risk", "Low","Mid", "High"))


ggplot(data,aes(x=Marital_Status,fill=Marital_Status)) +
  geom_bar(stat = "count")+
  geom_text(stat = "count", aes(label = ..count..), vjust = -0.5)


ggplot(data,aes(x=Teenhome,fill=Teenhome)) +
  geom_bar(stat = "count")+
  geom_text(stat = "count", aes(label = ..count..), vjust = -0.5) 

ggplot(data,aes(x=Childhome,fill=Childhome)) +
  geom_bar(stat = "count")+
  geom_text(stat = "count", aes(label = ..count..), vjust = -0.5)


ggplot(data,aes(x=Type,fill=Type)) +
  geom_bar() +
  scale_x_discrete(limits = c( "Risk","Low", "Mid", "High")) +
  geom_text(stat = "count",aes(label = ..count..), vjust = -0.5) +
  scale_fill_discrete(breaks = c("Risk","Low",  "Mid", "High"))


selected_columns <- c('Recency', 'Frequency','Monetary')
ggpairs(data,columns=selected_columns,mapping = aes(colour = Type),diag = "blank",lower = list(continuous = wrap("smooth", method = "lm", formula = y ~ x)))


ggplot(data, aes(x = Income)) +
  geom_histogram(binwidth = 10000, boundary = 0, color = "white",position='identity',aes(fill = Type),alpha=0.6) +
  labs(x = "Income", y = "Count") + 
  scale_fill_discrete(breaks = c("Risk","Low","Mid", "High"))

ggplot(data, aes(x = Income)) +
  geom_histogram(binwidth = 10000, boundary = 0, color = "white",position='identity',fill = "lightblue") +
  labs(x = "Income", y = "Count") 

ggplot(data,aes(x=Frequency,y=Monetary,color=Type)) +
  geom_jitter() +
  scale_color_discrete(limits = c( "Risk","Low", "Mid", "High")) +
  theme_classic()

ggplot(data,aes(x=Recency,y=Frequency,color=Type)) +
  geom_jitter() +
  scale_color_discrete(limits = c( "Risk","Low", "Mid", "High")) +
  geom_smooth() +
  theme_classic()

ggplot(data,aes(x=Recency,y=Monetary,color=Type)) +
  geom_jitter() +
  scale_color_discrete(limits = c( "Risk","Low", "Mid", "High")) +
  geom_smooth() +
  theme_classic()

