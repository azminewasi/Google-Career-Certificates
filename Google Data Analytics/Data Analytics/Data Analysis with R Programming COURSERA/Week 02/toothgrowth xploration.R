
data("ToothGrowth")
view(ToothGrowth)

filtered_tg<-filter(ToothGrowth,dose==0.5)
view(filtered_tg)
arrange(filtered_tg,len)

arrange(filter(ToothGrowth,dose==0.5),len)

fil_tg<-ToothGrowth %>% 
  filter(dose==0.5) %>% 
  arrange(len)
view(fil_tg)

fil_tg2<-ToothGrowth %>% 
  filter(dose==0.5) %>% 
  group_by(supp) %>% 
  arrange(len) %>% 
  summarize(mean_len=mean(len,na.rm=T),.group="drop")
view(fil_tg2)


print(mdy(timeDate("April 10, 2019")))


x <- timeDate(c("1/1/1998 3:05:23.4", "5/10/2005 2:15:11.234 PM")) 
mdy(x) 
hms(x) 
wdydy(x) 
