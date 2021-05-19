# Using count()
countries_selected %>%
  count(region, sort = TRUE)

countries_selected %>%
  count(state, wt=citizens, sort = TRUE)

# Using mutate()

countries_selected %>%
  mutate(population_walk=population*walk/100) %>%
  count(state, wt=population_walk, sort=TRUE)

# Using summarize()

countries_selected %>%
  summarise(min_population=min(population),max_unemployment=max(unemployment),average_income=mean(income))

# Using group_by()

countries_selected %>%
  group_by(state) %>%
  summarise(total_area=sum(land_area), total_population=sum(population))

countries_selected %>%
 group_by(region,state) %>%
  summarise(total_pop=sum(population))

# Using top_n()

countries_selected %>%
  group_by(region) %>%
  top_n(1)

countries_selected %>%
  group_by(region, state) %>%
  summarise(average_income=mean(income)) %>%
  top_n(1)


countries_selected %>%
  group_by(state, metro) %>%
  summarise(total_pop=sum(population)) 

