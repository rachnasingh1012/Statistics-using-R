# Using glimpse() to get idea of the datasets
glimpse(counties)

# Using select()

countries %>%
  select(state,county,population, professional:production) %>%
  arrange(desc(service))


countries %>%
  select(state, county, population, ends_with("work")) %>%
  filter(public_work > 50)

# Using rename()

countries %>%
  rename( country=county)

# Using transmute()

countries %>%
  transmute(state, county, population, density=population/land_area) %>%
  filter(population>1000000) %>%
  arrange(density)