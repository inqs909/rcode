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

p <- ggplot(Melanoma, aes(thickness, dead)) +
  geom_point(alpha = 0.7) +
  labs(x = "Tumour thickness (mm)", y = "Dead (1=yes, 0=no)") +
  stat_smooth(
    method = "glm",
    se = F,
    method.args = list(family = "binomial"),
    color = "blue"
  ) +
  theme_bw()
ggsave(filename = "posts/img/logistic.png")
