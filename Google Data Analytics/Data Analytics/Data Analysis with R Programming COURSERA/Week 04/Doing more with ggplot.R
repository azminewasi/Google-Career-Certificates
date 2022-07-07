ggplot(data = penguins) +
  geom_point(mapping = aes(x = flipper_length_mm, y = body_mass_g,shape=species,color = species)
  ) +
  geom_smooth(mapping = aes(x = flipper_length_mm, y = body_mass_g),bg="yellow",col = "orange"
  )  +
  geom_smooth(mapping = aes(x = flipper_length_mm, y = body_mass_g,linetype = species)
  )
  

ggplot(data = penguins) +
  geom_smooth(mapping = aes(x = flipper_length_mm, y = body_mass_g,linetype = species)
  )


ggplot(data = penguins) +
  geom_point(mapping = aes(x = flipper_length_mm, y = body_mass_g,shape=species)
  )   +
  geom_jitter(mapping = aes(x = flipper_length_mm, y = body_mass_g,color = species)
) 


ggplot(data=diamonds)+
  geom_bar(mapping = aes(x=cut,fill=clarity))







