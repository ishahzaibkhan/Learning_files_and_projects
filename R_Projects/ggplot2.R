# Initialization
# ggplot(data) + geom_Type_of_graph(mapping = aes(x = x, y= y))

# Scatter plot
ggplot(penguins) + geom_point(mapping = aes(
  x = penguins$body_mass_g,
  y = penguins$flipper_length_mm,
  color = species
))
ggplot(penguins) + geom_point(
  mapping = aes(
    x = penguins$body_mass_g,
    y = penguins$flipper_length_mm,
    size = species,
    alpha = species
  )
)
ggplot(penguins) + geom_point(
  mapping = aes(
    x = penguins$body_mass_g,
    y = penguins$flipper_length_mm,
    shape = species,
    color = species
  )
)

# smooth plot
ggplot(penguins) + geom_smooth(mapping = aes(x = penguins$body_mass_g, y = penguins$flipper_length_mm))
ggplot(penguins) + geom_smooth(
  mapping = aes(
    x = penguins$body_mass_g,
    y = penguins$flipper_length_mm,
    linetype = species,
    color = species
  )
)

# combining two plots in front of each other
ggplot(penguins) + geom_point(mapping = aes(
  x = penguins$body_mass_g,
  y = penguins$flipper_length_mm,
  color = species
)) + geom_smooth(mapping = aes(x = penguins$body_mass_g, y = penguins$flipper_length_mm))

#jitter plot it adds a noise to the data points so we can see it clearly
ggplot(penguins) + geom_jitter(mapping = aes(
  x = penguins$body_mass_g,
  y = penguins$flipper_length_mm,
  color = species
)) + geom_smooth(mapping = aes(x = body_mass_g, y = flipper_length_mm))

# bar plot
ggplot(diamonds) + geom_bar(mapping = aes(x = cut, fill = cut))
ggplot(diamonds) + geom_bar(mapping = aes(x = cut, fill = clarity))

# line plot
ggplot(penguins) + geom_line(mapping = aes(x = body_mass_g, y = flipper_length_mm, color = species))

#facet
ggplot(penguins) + geom_point(mapping = aes(
  x = penguins$body_mass_g,
  y = penguins$flipper_length_mm,
  color = species
)) + facet_wrap( ~ species)
ggplot(diamonds) + geom_bar(mapping = aes(x = cut, fill = cut)) + facet_wrap( ~
                                                                                cut)
ggplot(penguins) + geom_point(mapping = aes(
  x = penguins$body_mass_g,
  y = penguins$flipper_length_mm,
  color = species
)) + facet_wrap(sex ~ species)


hotel_booking <- read.csv("./hotel_bookings.csv")
ggplot(hotel_booking) + geom_bar(mapping = aes(x = distribution_channel, fill = deposit_type))
ggplot(hotel_booking) + geom_bar(mapping = aes(x = distribution_channel)) + facet_wrap( ~
                                                                                          deposit_type)

ggplot(hotel_booking) + geom_bar(mapping = aes(x = distribution_channel, fill = market_segment))
ggplot(hotel_booking) + geom_bar(mapping = aes(x = distribution_channel)) + facet_wrap( ~
                                                                                          market_segment)

ggplot(data = hotel_booking) + geom_bar(mapping = aes(x = distribution_channel)) + facet_wrap( ~ deposit_type ~ market_segment)


# Activity

