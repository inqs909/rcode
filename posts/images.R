p <- ggplot(penguins, aes(x = flipper_length_mm, fill = species)) +
  geom_density(alpha = 0.5)
ggsave(filename = "posts/img/linear.png")
library(palmerpenguins)
p <- ggplot(
  penguins,
  aes(x = flipper_length_mm, y = body_mass_g, color = species)
) +
  geom_point() +
  stat_smooth(method = "lm") +
  theme_bw() +
  xlab("FLipper Length") +
  ylab("Body Mass")
