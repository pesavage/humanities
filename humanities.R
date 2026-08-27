#set working directory [replace with your own local working directory]
setwd("/Users/psav050/Documents/GitHub/humanities")

library(ggplot2)

d<-read.csv(file="boghossian.csv",row.names=1)

t<-as.data.frame(table(d$Gender))

ggplot(t, aes(x = "", y = Freq, fill = Var1)) +
  geom_col(width = 1, color = "white") +
  coord_polar(theta = "y") +
scale_fill_brewer(palette = "Blues") +
  theme_void()

#Repeat for the following variables:
t<-as.data.frame(table(d$Race))
t<-as.data.frame(table(d$Discipline))
t<-as.data.frame(table(d$Institution))
t<-as.data.frame(table(d$Country))