library(tidyverse)
library(readxl)
library(lubridate)



# 2019
df2019_original <- read_excel("~/Documents/CartONG/DRS/R_sub_date/2019_Livelihoods_Beneficiary_Survey.xlsx",
                              skip = 2)

df2019 <- df2019_original %>% 
  select(43,6,5,76,,78,75, 2) 

colnames(df2019) <- c("year", "country", "uid", "outputBL", "outputEL", "BE", "sub_date")

df2019$sub_date <- substr(df2019$sub_date, 0, 10)
df2019$sub_date <- ymd(df2019$sub_date)
df2019$output <- coalesce(df2019$outputBL,df2019$outputEL)
df2019 <- df2019 %>% 
  mutate(country = replace(country, country == "South_Africa", "South Africa")) %>% 
  mutate(country = replace(country, country == "Costa_Rica", "Costa Rica")) %>% 
  mutate(country = replace(country, country == "Congo_(DR)", "DRC")) %>% 
  mutate(country = replace(country, country == "Burkina_Faso", "Burkina Faso"))

table(df2019$BE)

df2019_all <- df2019 %>% 
  select(2,6,7) %>% 
  mutate(BE = case_when(
    BE == "Baseline survey" ~ "Baseline",
    BE == "Endline survey" ~ "Endline",
    BE == "Endline" ~ "Endline",
    BE == "Baseline" ~ "Baseline",
    BE == "(Optional) Midline survey" ~ "Baseline"
  )) %>% 
  filter(sub_date > "2019-01-01") %>% 
  filter(!is.na(country)) %>%
  group_by(country,BE) %>% 
  distinct(sub_date)

# Monitoring Template submissions dates
df2019mt_date <-  mt_date %>% 
  filter(year == "2019") %>% 
  select(2,3)

colnames(df2019mt_date) <- c("country", "sub_date")

df2019mt_date <- df2019mt_date %>% 
  mutate(BE = "Monitoring Template") %>% 
  select(1,3,2)

df2019mt_date

df2019_all <- bind_rows(df2019_all, df2019mt_date) %>% 
  filter(country != "Panama") %>% 
  filter(country != "Morocco")

df2019_all <- left_join(df2019_all, regs)


#### 2021 data
df2021_original <- read_excel("2021_Livelihoods_Beneficiary_Survey.xlsx")
colnames(df2021_original)

df2021 <- df2021_original %>% 
  select(43,6,5,76,,78,75, 343) 

colnames(df2021) <- c("year", "country", "uid", "outputBL", "outputEL", "BE", "sub_date")

df2021$sub_date <- substr(df2021$sub_date, 0, 10)
df2021$sub_date <- ymd(df2021$sub_date)
df2021$output <- coalesce(df2021$outputBL,df2021$outputEL)

table(df2021$BE)

df2021 <- df2021 %>% 
  select(1,2,3,8,6,7)

df2021_ <- df2021 %>% 
  group_by(year,country, uid, output, BE) %>% 
  summarise(date_max = max(sub_date)) %>% 
  ungroup() %>% 
  pivot_wider(names_from = BE, values_from = date_max) %>% 
  rename("Baseline" = "Baseline survey") %>% 
  select(1:5)
  
# 2020
df2020_original <- read_excel("2020_Livelihoods_Beneficiary_Survey.xlsx")
colnames

df2020 <- df2020_original %>% 
  select(43,6,5,76,,78,75, 342) 

colnames(df2020) <- c("year", "country", "uid", "outputBL", "outputEL", "BE", "sub_date")

df2020$sub_date <- substr(df2020$sub_date, 0, 10)
df2020$sub_date <- ymd(df2020$sub_date)
df2020$output <- coalesce(df2020$outputBL,df2020$outputEL)

df2020 <- df2020 %>% 
  select(1,2,3,8,6,7) %>% 
  group_by(year,country, uid, output, BE) %>% 
  summarise(date_max = max(sub_date),
            date_min = min(sub_date)) %>% 
  ungroup()

nga <- df2020_original %>% 
  filter(Country == "Nigeria") %>% 
  select(67, 68, 69,70)

table(nga$Camp)
