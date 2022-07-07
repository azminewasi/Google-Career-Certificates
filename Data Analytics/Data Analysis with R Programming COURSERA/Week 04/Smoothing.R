ggplot(data, aes(x=distance, 
                 y= dep_delay)) +geom_point() +geom_smooth()


#Loess smoothing
ggplot(data, aes(x=, y=))+ 
  geom_point() +       
  geom_smooth(method="loess")


#Gam smoothing
ggplot(data, aes(x=, y=)) + 
  geom_point() +        
  geom_smooth(method="gam", 
              formula = y ~s(x))