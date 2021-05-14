# Select the columns

counties %>%
  select(state,county,population,poverty)

#Arranging observations

counties_selected %>%
  arrange(desc(public_work))

#Filter for counties

counties_selected %>%
  filter(state=="California", population>1000000)

counties_selected %>%
  filter(state == "Texas",
         population > 10000) %>%
  arrange(desc(private_work))

# Using Mutate

counties_selected %>%
  mutate(public_workers = public_work * population / 100) %>%
  # Sort in descending order of the public_workers column
  arrange(desc(public_workers))

#Combining them

counties %>%
  select(state,county,population,men,women) %>%
  mutate(proportion_men = men/population) %>%
  filter(population>10,000) %>%
  arrange(desc(proportion_men))

