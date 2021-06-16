# Tidy Data
# Specify missing values with NA

nh_temp <- 
  read_csv("http://data.giss.nasa.gov/gistemp/tabledata_v3/NH.Ts+dSST.csv",
           skip = 1, na = "***") 
nh_temp

# Pivoting data

temp <- tibble(
  Year = 1991:1993,
  Jan = c(10, 7, 9),
  Feb = c(9, 7, 8),
  Mar = c(12, 11, 13),
  Apr = c(18, 16, 17),
  May = c(22, 21, 23))

temp

temp_tidy <- pivot_longer(
  temp,
  Jan:May,
  names_to = "Month",
  values_to = "Temp"
)

temp_tidy

# Example

nh_temp %>% 
  select(Year:Dec) %>% 
  filter(Year >= 1950, Year <= 2010) %>% 
  pivot_longer(Jan:Dec,
               names_to = "Month",
               values_to = "Temp") %>% 
  group_by(Month) %>% 
  summarise(mean_temp = mean(Temp))

# Excursion: lookup tables

months <- c("Jan", "Feb", "Mar", "Apr", 
            "Jan", "Jan", "Feb", "Jan",
            "Apr", "Mar", "Mar", "May")

months_num <- 1:12
names(months_num) <- c("Jan", "Feb", "Mar",
                       "Apr", "May", "Jun",
                       "Jul", "Aug", "Sep",
                       "Oct", "Nov", "Dec")
months_num
months_num[c("Apr", "Jul", "Apr")]
months_num[months]

# Example

nh_temp %>% 
  select(Year:Dec) %>% 
  pivot_longer(Jan:Dec, names_to = "Month",
               values_to = "Temp") %>% 
  filter(Year %in% 1950:2010) %>% 
  group_by(Month) %>% 
  summarise(Temp = mean(Temp)) %>% 
  mutate(Month = months_num[Month]) %>% 
  arrange(Month) %>% 
  filter(Month %in% 3:10) %>% 
  summarise(Temp = mean(Temp))