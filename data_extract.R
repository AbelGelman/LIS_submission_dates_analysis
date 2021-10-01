library(tidyverse)
library(readxl)
library(lubridate)




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
  
write_csv(df2021_, "/Users/Abel/Documents/CartONG/DRS/R_sub_date/dates_output2021.csv")




table(df2021_$BE)
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

# 2019
df2019_original <- read_excel("2019_Livelihoods_Beneficiary_Survey.xlsx")


df2019 <- df2019_original %>% 
  select(43,6,5,76,,78,75, 351) 

colnames(df2019) <- c("year", "country", "uid", "outputBL", "outputEL", "BE", "sub_date")

df2019$sub_date <- substr(df2019$sub_date, 0, 10)
df2019$sub_date <- ymd(df2019$sub_date)
df2019$output <- coalesce(df2019$outputBL,df2019$outputEL)

df2019 <- df2019 %>% 
  select(1,2,3,8,6,7) %>% 
  group_by(year,country, uid, output, BE) %>% 
  summarise(date_max = max(sub_date),
            date_min = min(sub_date)) %>% 
  ungroup()



# join df

df <- bind_rows(df2019, df2020, df2021) %>% 
  mutate(BE = case_when(
    BE == "Baseline survey" ~ "Baseline",
    BE == "Endline survey" ~ "Endline",
    BE == "Endline" ~ "Endline",
    BE == "Baseline" ~ "Baseline",
  )) %>% 
  filter(!is.na(BE))


nrow(df)

df <- select(df, c(1,2,3,4,5,6)) %>% 
  filter(output != "Did not benefit") %>% 
  filter(output != "0")

table(df$year, df$output)
table(df$year)
df
df_pivot <- pivot_wider(df,
                        names_from = BE,
                        values_from = date_max, 
                        
                        values_fn = list)
view(df_pivot)

table(df_pivot$year, df_pivot$output)
df_pivot <- unnest(df_pivot, Baseline)
df_pivot <- unnest(df_pivot, Endline)
df_pivot <- select(df_pivot, c(1,2,3,4,6,5))
view(df_pivot)


write_csv(df_pivot, "/Users/Abel/Documents/CartONG/DRS/R_sub_date/dates_output.csv")

