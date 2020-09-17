library(tidyverse)
library(dplyr)
library(bbplot)
heights <- data.frame(heights_of_plant=c(180,121,210,237,294,303,328,409,440,474),years=c(2010,2011,2012,2013,2014,2015,2016,2017,2018,2019))
heights
heights %>% 
  ggplot(.,aes(x= as.factor(years),y=heights_of_plant,fill=factor(years)))+
  geom_bar(stat="identity",width=0.7)+labs(title="Height of A Plant in Years",subtitle = "Prepared by: İpek AYDIN")+bbc_style()+theme(plot.title = element_text(size=12),plot.subtitle = element_text(size=10),legend.position="none",axis.text.x=element_text(size=10),,axis.text.y=element_text(size=10))+scale_fill_manual(values=c("#1380A1","#990000","#1380A1","#1380A1","#1380A1","#1380A1","#1380A1","#1380A1","#1380A1","#1380A1"))+ geom_hline(yintercept = 0, size = 1, colour = "#333333")+ geom_label(aes(x = as.factor(years)[2], y = 300, label = "The plant is pruned."), colour = "#555555", fill = "white", label.size = NA,family="Helvetica", size = 3)+ geom_segment(aes(x = as.factor(years)[2], y = 120, xend = as.factor(years)[2], yend = 220), colour = "#555555", size=0.5,arrow = arrow(length = unit(0.03, "npc")))
