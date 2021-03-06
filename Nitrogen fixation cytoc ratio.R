library(ggplot2)
library(scales)
####percentage
yy<-read.csv(file.choose(),header = 1)
head(yy)
##
p<-ggplot(data=yy,aes(percentage,PC1))+
  geom_point()+
  geom_smooth(method = lm, color="#BD2026")+
  stat_summary(fun.y = mean, geom = 'point', shape=21, fill= "white", size = 2)+
  scale_x_continuous(labels=percent)+
  scale_y_continuous(breaks = seq(0,0.8,0.15),limits = c(0,0.8),labels=percent)+
  labs(x="15N content",y="Ratio of area")+
  theme_bw(base_size = 20)+
  theme(panel.grid.minor = element_blank())+
  annotate("text", x = 0.2, y = 0.765, label = "R2 =, P < 0.001",size=5)+
  facet_grid(.~species)
p
##11111111111#
p<-ggplot(data=yy,aes(percentage,PC1))+
  geom_smooth(method = lm, color="#BD2026", fill= "#E8D0E4")+
  geom_point(aes(color=factor(percentage),shape=factor(percentage)),size = 3 )+
  stat_summary(aes(shape=factor(percentage),color=factor(percentage)),fun.y = mean, geom = 'point',size = 7)+
  labs(x="15N2 percentage (%)",y="PC1")+
  scale_shape_manual(values = c(0,1,2,5,6,5))+
  scale_color_manual(values = c("#ff7f00","#984ea3","#4daf4a","#377eb8","#e41a1c","#f564e3"))+
  scale_x_continuous(breaks = seq(0,100,25),limits = c(0,100))+
  theme_bw(base_size = 20)+
  theme(
    panel.grid.minor = element_blank(),
    legend.position = "none")+
  annotate("text", x = 0.2, y = 0.63, label = "R2 = 0.990, P < 0.001",size=5,vjust=0,hjust=0)
p
####......................................................................
yy<-read.csv(file.choose(),header = 1)
##value   Ratio ,,,,8*7
p<-ggplot(data=yy,aes(percent,value))+
  geom_smooth(method = lm, color="#BD2026", fill= "#E8D0E4")+
  geom_point(aes(color=factor(percent),shape=factor(percent)),size = 3 )+
  stat_summary(aes(shape=factor(percent),color=factor(percent)),fun.y = mean, geom = 'point',size = 7)+
  labs(x="15N2 percentage (%)",y="Ratio of peak area (I1114/I1114+I1129)")+
  scale_shape_manual(values = c(0,1,2,5,6))+
  scale_y_continuous(breaks = seq(0,0.8,0.2),limits = c(0,0.8))+
  scale_color_manual(values = c("#ff7f00","#984ea3","#4daf4a","#377eb8","#e41a1c"))+
  theme_bw(base_size = 28)+
  theme(
    panel.grid.minor = element_blank(),
    panel.border = element_rect(color = "black",fill = 0,size=1),
    legend.position = "none")+
  annotate("text", x = 0.2, y = 0.75, label = "R2 = , P < 0.001",size=9,vjust=0,hjust=0)
p

### ................................................................
yy<-read.csv(file.choose(),header = 1)
## GN Soil PCA (SANDIAN) ,,8*7
p<-ggplot(data=yy,aes(percentage,PC1))+
  geom_point(aes(color=factor(percentage),shape=factor(percentage)),size = 3 )+
  stat_summary(aes(shape=factor(percentage),color=factor(percentage)),fun.y = mean, geom = 'point',size = 7)+
  labs(x="15N2 percentage (%)",y="PC1")+
  scale_shape_manual(values = c(0,1,2,5,6,5))+
  scale_color_manual(values = c("#ff7f00","#984ea3","#4daf4a","#377eb8","#e41a1c","#f564e3"))+
  scale_x_continuous(breaks = seq(0,130,25),limits = c(0,130))+
  scale_y_continuous(breaks = seq(-0.6,0.65,0.3),limits = c(-0.61,0.65))+
  theme_bw(base_size = 28)+
  theme(
    panel.grid.minor = element_blank(),
    panel.border = element_rect(color = "black",fill = 0,size=1),
    legend.position = "none")+
  annotate("text", x = 0.2, y = 0.64, label = "R2 = , P < 0.001",size=9,vjust=0,hjust=0)+
  annotate("text",x=50,y=-0.6,label="11")
p
## GN Soil (LINE SMOOTH)  ,,8*7
yy<-read.csv(file.choose(),header = 1)
p<-ggplot(data=yy,aes(percentage,PC1))+
  geom_smooth(method = lm, color="#BD2026", fill= "#E8D0E4")+
  geom_point(aes(color=factor(percentage),shape=factor(percentage)),size = 3 )+
  stat_summary(aes(shape=factor(percentage),color=factor(percentage)),fun.y = mean, geom = 'point',size = 7)+
  labs(x="15N2 percentage (%)",y="PC1")+
  scale_shape_manual(values = c(0,1,2,5,6,5))+
  scale_color_manual(values = c("#ff7f00","#984ea3","#4daf4a","#377eb8","#e41a1c","#f564e3"))+
  scale_x_continuous(breaks = seq(0,130,25),limits = c(0,130))+
  scale_y_continuous(breaks = seq(-0.6,0.65,0.3),limits = c(-0.61,0.65))+
  theme_bw(base_size = 28)+
  theme(
    panel.grid.minor = element_blank(),
    panel.border = element_rect(color = "black",fill = 0,size=1),
    legend.position = "none")+
  annotate("text", x = 0.2, y = 0.64, label = "R2 = , P < 0.001",size=9,vjust=0,hjust=0)+
  annotate("text",x=50,y=-0.6,label="11")
p


### HQ PCA  ,,,8*7
yy<-read.csv(file.choose(),header = 1)
p<-ggplot(data=yy,aes(percentage,PC1))+
  geom_smooth(method = lm, color="#BD2026", fill= "#E8D0E4")+
  geom_point(aes(color=factor(percentage),shape=factor(percentage)),size = 3 )+
  stat_summary(aes(shape=factor(percentage),color=factor(percentage)),fun.y = mean, geom = 'point',size = 7)+
  labs(x="15N2 percentage (%)",y="PC1")+
  scale_shape_manual(values = c(0,1,2,5,6,5))+
  scale_color_manual(values = c("#ff7f00","#984ea3","#4daf4a","#377eb8","#e41a1c","#f564e3"))+
  scale_x_continuous(breaks = seq(0,100,25),limits = c(0,100))+
  scale_y_continuous(breaks = seq(-0.6,0.65,0.3),limits = c(-0.61,0.65))+
  theme_bw(base_size = 28)+
  theme(
    panel.grid.minor = element_blank(),
    panel.border = element_rect(color = "black",fill = 0,size=1),
    legend.position = "none")+
  annotate("text", x = 0.2, y = 0.64, label = "R2 = , P < 0.001",size=9,vjust=0,hjust=0)+
  annotate("text",x=50,y=-0.6,label="11")
p

###
yy<-read.csv(file.choose(),header = 1)

yy_fit<-lm(PC1~percentage,yy)
summary(yy_fit)

