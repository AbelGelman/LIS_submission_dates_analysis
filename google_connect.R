#connect with goolge sheets database

library(googlesheets4)
library(tidyverse)
library(lubridate)


# Monitoring Template Submission Dates
gs_auth(new_user = TRUE)
df <- read_sheet("https://docs.google.com/spreadsheets/d/1r0ZSjUrOT_8LSvjgN95nJ-2diIc4x0eW4GRqtuZsGhQ/edit#gid=1620496820",
           sheet = "dates_uid",
           col_types = "ccccccDDD")
view(df)
summary(df)

mt_date <- df %>% 
  select(2,3, 7, 6) %>% 
  mutate(country = replace(country, country == "Congo, Democratic Republic of", "DRC"))

unique(mt_date$country)


# Regions
regs <- read_sheet("https://docs.google.com/spreadsheets/d/1r0ZSjUrOT_8LSvjgN95nJ-2diIc4x0eW4GRqtuZsGhQ/edit#gid=1620496820",
                 sheet = "regions")








df2019 <- df %>% 
  filter(year == 2019) %>% 
  pivot_longer(cols = c("mt_date", "bl_date", "el_date")) %>% 
  ggplot(aes(x=value, y=country, col = name))+
    geom_point()
  
df2020 <- df %>% 
  filter(year == 2020) %>% 
  pivot_longer(cols = c("mt_date", "bl_date", "el_date")) %>% 
  ggplot(aes(x=value, y=country, col = name))+
  geom_point()


df2019 <- df %>% 
  filter(year == 2019) %>% 
  ggplot(aes(x = mt_date, y = duty_station)) +
  geom_point()
  
mt_months <- df %>% 
  filter(year == 2019)# %>% 
  # ggplot(aes(x = mt_date, y = duty_station)) +
  # geom_point()

bl_months <- df %>% 
  filter(year == 2019) #%>% 
  # ggplot(aes(x = bl_date, y = duty_station)) +
  # geom_point()


df2019$mt_date <- round_date(df2019$mt_date, unit = "month")

  
