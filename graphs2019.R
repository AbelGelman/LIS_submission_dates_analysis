library(lubridate)
library(viridis)
library(hrbrthemes)
library(patchwork)
library(ggExtra)
library(ggplot2)


# 2019 Regional charts--------------------------------------------------------------------

# West and Central Africa  ------------------------------------------------
df2019_graph_w_c_af <- df2019_all %>% 
  filter(Region == "West/Central Africa") %>% 
  ggplot(aes(x = sub_date, y= country, col= BE)) +
  geom_point(aes(shape = BE), size = 3) +
  scale_x_date(date_labels = "%b.%y",
               date_breaks = "2 months") +
  scale_shape_manual(values = c(20, 15,15))+
  scale_color_manual(values = c("#00bc4b","#0072BC","#2600bc"))+
  labs(title = "Data submissions 2019 Monitoring Cycle - UNHCR LIVELIHOODS",
       x = NULL, y = NULL, shape = NULL,col = NULL)+
  theme(legend.position = "bottom",
        legend.key = element_rect(fill = "white"),
        axis.text.x = element_text(angle = 45, hjust = 1),
        panel.grid.major.x = element_line(colour =  "grey60", linetype = 15, size = 0.4),
        panel.grid.minor.x = element_line(colour =  "grey60", linetype = 1, size = 0.1),
        panel.grid.major.y = element_line(colour =  "grey90", linetype = 1, size = 3),
        panel.background = element_rect(fill = "white"),
        axis.ticks.y = element_blank(),
  )


# East & Horn of Africa ---------------------------------------------------
df2019_graph_e_h_af <- df2019_all %>% 
  filter(Region == "East/Horn of Africa") %>% 
  ggplot(aes(x = sub_date, y= country, col= BE)) +
  geom_point(aes(shape = BE), size = 3) +
  scale_x_date(date_labels = "%b.%y",
               date_breaks = "2 months") +
  scale_shape_manual(values = c(20, 15,15))+
  scale_color_manual(values = c("#00bc4b","#0072BC","#2600bc"))+
  labs(title = "Data submissions 2019 Monitoring Cycle - UNHCR LIVELIHOODS",
       x = NULL, y = NULL, shape = NULL,col = NULL)+
  theme(legend.position = "bottom",
        legend.key = element_rect(fill = "white"),
        axis.text.x = element_text(angle = 45, hjust = 1),
        panel.grid.major.x = element_line(colour =  "grey60", linetype = 15, size = 0.4),
        panel.grid.minor.x = element_line(colour =  "grey60", linetype = 1, size = 0.1),
        panel.grid.major.y = element_line(colour =  "grey90", linetype = 1, size = 3),
        panel.background = element_rect(fill = "white"),
        axis.ticks.y = element_blank(),
  )


# Southern Africa ---------------------------------------------------------
df2019_graph_s_af <- df2019_all %>% 
  filter(Region == "Southern Africa") %>% 
  ggplot(aes(x = sub_date, y= country, col= BE)) +
  geom_point(aes(shape = BE), size = 3) +
  scale_x_date(date_labels = "%b.%y",
               date_breaks = "2 months") +
  scale_shape_manual(values = c(20, 15,15))+
  scale_color_manual(values = c("#00bc4b","#0072BC","#2600bc"))+
  labs(title = "Data submissions 2019 Monitoring Cycle - UNHCR LIVELIHOODS",
       x = NULL, y = NULL, shape = NULL,col = NULL)+
  theme(legend.position = "bottom",
        legend.key = element_rect(fill = "white"),
        axis.text.x = element_text(angle = 45, hjust = 1),
        panel.grid.major.x = element_line(colour =  "grey60", linetype = 15, size = 0.4),
        panel.grid.minor.x = element_line(colour =  "grey60", linetype = 1, size = 0.1),
        panel.grid.major.y = element_line(colour =  "grey90", linetype = 1, size = 3),
        panel.background = element_rect(fill = "white"),
        axis.ticks.y = element_blank(),
  )




# MENA --------------------------------------------------------------------
df2019_graph_MENA <- df2019_all %>% 
  filter(Region == "MENA") %>% 
  ggplot(aes(x = sub_date, y= country, col= BE)) +
  geom_point(aes(shape = BE), size = 3) +
  scale_x_date(date_labels = "%b.%y",
               date_breaks = "2 months") +
  scale_shape_manual(values = c(20, 15,15))+
  scale_color_manual(values = c("#00bc4b","#0072BC","#2600bc"))+
  labs(title = "Data submissions 2019 Monitoring Cycle - UNHCR LIVELIHOODS",
       x = NULL, y = NULL, shape = NULL,col = NULL)+
  theme(legend.position = "bottom",
        legend.key = element_rect(fill = "white"),
        axis.text.x = element_text(angle = 45, hjust = 1),
        panel.grid.major.x = element_line(colour =  "grey60", linetype = 15, size = 0.4),
        panel.grid.minor.x = element_line(colour =  "grey60", linetype = 1, size = 0.1),
        panel.grid.major.y = element_line(colour =  "grey90", linetype = 1, size = 3),
        panel.background = element_rect(fill = "white"),
        axis.ticks.y = element_blank(),
  )


# Latin America -----------------------------------------------------------
df2019_graph_latam <- df2019_all %>% 
  filter(Region == "Latin America") %>% 
  ggplot(aes(x = sub_date, y= country, col= BE)) +
  geom_point(aes(shape = BE), size = 3) +
  scale_x_date(date_labels = "%b.%y",
               date_breaks = "2 months") +
  scale_shape_manual(values = c(20, 15,15))+
  scale_color_manual(values = c("#00bc4b","#0072BC","#2600bc"))+
  labs(title = "Data submissions 2019 Monitoring Cycle - UNHCR LIVELIHOODS",
       x = NULL, y = NULL, shape = NULL,col = NULL)+
  theme(legend.position = "bottom",
        legend.key = element_rect(fill = "white"),
        axis.text.x = element_text(angle = 45, hjust = 1),
        panel.grid.major.x = element_line(colour =  "grey60", linetype = 15, size = 0.4),
        panel.grid.minor.x = element_line(colour =  "grey60", linetype = 1, size = 0.1),
        panel.grid.major.y = element_line(colour =  "grey90", linetype = 1, size = 3),
        panel.background = element_rect(fill = "white"),
        axis.ticks.y = element_blank(),
  )
  

# Europe ------------------------------------------------------------------
df2019_graph_eu <- df2019_all %>% 
  filter(Region == "Europe") %>% 
  ggplot(aes(x = sub_date, y= country, col= BE)) +
  geom_point(aes(shape = BE), size = 3) +
  scale_x_date(date_labels = "%b.%y",
               date_breaks = "2 months") +
  scale_shape_manual(values = c(20, 15,15))+
  scale_color_manual(values = c("#00bc4b","#0072BC","#2600bc"))+
  labs(title = "Data submissions 2019 Monitoring Cycle - UNHCR LIVELIHOODS",
       x = NULL, y = NULL, shape = NULL,col = NULL)+
  theme(legend.position = "bottom",
        legend.key = element_rect(fill = "white"),
        axis.text.x = element_text(angle = 45, hjust = 1),
        panel.grid.major.x = element_line(colour =  "grey60", linetype = 15, size = 0.4),
        panel.grid.minor.x = element_line(colour =  "grey60", linetype = 1, size = 0.1),
        panel.grid.major.y = element_line(colour =  "grey90", linetype = 1, size = 3),
        panel.background = element_rect(fill = "white"),
        axis.ticks.y = element_blank(),
  )


# Asia --------------------------------------------------------------------
df2019_graph_asia <- df2019_all %>% 
  filter(Region == "Asia") %>% 
  ggplot(aes(x = sub_date, y= country, col= BE)) +
  geom_point(aes(shape = BE), size = 3) +
  scale_x_date(date_labels = "%b.%y",
               date_breaks = "2 months") +
  scale_shape_manual(values = c(20, 15,15))+
  scale_color_manual(values = c("#00bc4b","#0072BC","#2600bc"))+
  labs(title = "Data submissions 2019 Monitoring Cycle - UNHCR LIVELIHOODS",
       x = NULL, y = NULL, shape = NULL,col = NULL)+
  theme(legend.position = "bottom",
        legend.key = element_rect(fill = "white"),
        axis.text.x = element_text(angle = 45, hjust = 1),
        panel.grid.major.x = element_line(colour =  "grey60", linetype = 15, size = 0.4),
        panel.grid.minor.x = element_line(colour =  "grey60", linetype = 1, size = 0.1),
        panel.grid.major.y = element_line(colour =  "grey90", linetype = 1, size = 3),
        panel.background = element_rect(fill = "white"),
        axis.ticks.y = element_blank(),
  )
  


# Combine regional graphs -------------------------------------------------
df2019_graph_w_c_af / df2019_graph_e_h_af / df2019_graph_s_af


# All countries 1 graph -----------------------------------------------------
df2019_graph <- df2019_all %>% 
  ggplot(aes(x = sub_date, y= country, col= BE)) +
  geom_point(aes(shape = BE), size = 3) +
  scale_x_date(date_labels = "%b.%y",
               date_breaks = "2 months") +
  scale_shape_manual(values = c(20, 15,15))+
  scale_color_manual(values = c("#00bc4b","#0072BC","#2600bc"))+
  labs(title = "Data submissions 2019 Monitoring Cycle - UNHCR LIVELIHOODS",
       x = NULL, y = NULL, shape = NULL,col = NULL)+
  theme(legend.position = "bottom",
        legend.key = element_rect(fill = "white"),
        axis.text.x = element_text(angle = 45, hjust = 1),
        panel.grid.major.x = element_line(colour =  "grey60", linetype = 15, size = 0.4),
        panel.grid.minor.x = element_line(colour =  "grey60", linetype = 1, size = 0.1),
        panel.grid.major.y = element_line(colour =  "grey90", linetype = 1, size = 3),
        panel.background = element_rect(fill = "white"),
        axis.ticks.y = element_blank(),
        )
 
df2019_graph
df2019_graph <- ggMarginal(df2019_graph,
                               type = "density",
                               size = 5,
                               groupColour = TRUE, 
                               groupFill = TRUE)

df2019_graph


# All regions 1 graphs ----------------------------------------------------
df2019_graph_reg <- df2019_all %>% 
  ggplot(aes(x = sub_date, y= country, col= BE)) +
  geom_point(aes(shape = BE), size = 3) +
  scale_x_date(date_labels = "%b.%y",
               date_breaks = "1 months") +
  scale_shape_manual(values = c(20, 15,15))+
  scale_color_manual(values = c("#00bc4b","#0072BC","#2600bc"))+
  labs(title = "Data submissions 2019 Monitoring Cycle - UNHCR LIVELIHOODS",
       x = "",
       y = "",
       shape = "",
       col = "")+
  theme(legend.position = "bottom",
        axis.text.x = element_text(angle = 45, hjust = 1),
        panel.grid.major.x = element_line(colour =  "grey60", linetype = 15, size = 0.4),
        panel.grid.minor.x = element_line(colour =  "grey60", linetype = 1, size = 0.1),
        panel.grid.major.y = element_line(colour =  "grey90", linetype = 1, size = 3),
        panel.background = element_rect(fill = "white"),
        axis.ticks.y = element_blank())

df2019_graph_reg
df2019_graph_reg <- ggMarginal(df2019_graph_reg,
                               type = "density",
                               size = 5,
                               groupColour = TRUE, 
                               groupFill = TRUE)
df2019_graph_reg



# All year combined in 1 row ----------------------------------------------
df2019_graph_act <- df2019_all %>% 
  mutate(year = "2019") %>% 
  ggplot(aes(x = sub_date, y = year, col= BE)) +
  geom_point(aes(shape = BE), size = 3) +
  scale_x_date(date_labels = "%b.%y",
               date_breaks = "2 months") +
  scale_shape_manual(values = c(20, 15,15))+
  scale_color_manual(values = c("#00bc4b","#0072BC","#2600bc"))+
  labs(title = "Data submissions 2019 Monitoring Cycle - UNHCR LIVELIHOODS",
       x = "",
       y = "",
       shape = "",
       col = "")+
  theme(legend.position = "bottom",
        axis.text.x = element_text(angle = 45, hjust = 1),
        panel.grid.major.x = element_line(colour =  "grey60", linetype = 15, size = 0.4),
        panel.grid.minor.x = element_line(colour =  "grey60", linetype = 1, size = 0.1),
        panel.grid.major.y = element_line(colour =  "grey90", linetype = 1, size = 3),
        panel.background = element_rect(fill = "white"),
        axis.ticks.y = element_blank())

df2019_graph_act
df2019_graph_act <- ggMarginal(df2019_graph_act,
                               type = "density",
                               size =5,
                               groupColour = TRUE, 
                               groupFill = TRUE)
df2019_graph_act

df2019_graph_act <- df2019_all %>% 
  mutate(year = "2019") %>% 
  ggplot(aes(x = sub_date, y = year, col= BE)) +
  geom_point(aes(shape = BE), size = 3) +
  scale_x_date(date_labels = "%b.%y",
               date_breaks = "2 months") +
  scale_shape_manual(values = c(20, 15,15))+
  scale_color_manual(values = c("#00bc4b","#0072BC","#2600bc"))+
  labs(title = "Data submissions 2019 Monitoring Cycle - UNHCR LIVELIHOODS",
       x = "",
       y = "",
       shape = "",
       col = "")+
  theme(legend.position = "bottom",
        axis.text.x = element_text(angle = 45, hjust = 1),
        panel.grid.major.x = element_line(colour =  "grey60", linetype = 15, size = 0.4),
        panel.grid.minor.x = element_line(colour =  "grey60", linetype = 1, size = 0.1),
        panel.grid.major.y = element_line(colour =  "grey90", linetype = 1, size = 3),
        panel.background = element_rect(fill = "white"),
        axis.ticks.y = element_blank())


df2019_yr <- df2019_all %>% 
  mutate(sub_date_m = format(sub_date, "%b")) %>%
  group_by(BE, sub_date_m) %>% 
  count() %>% 
  ungroup()

df2019_yr$sub_date_m <- factor(df2019_yr$sub_date_m, 
                             levels = c("Jan", "Feb", "Mar", "Apr", "May","Jun","Jul", "Aug", "Sep", "Oct", "Nov", "Dec"))

view(df2019_yr)
table(df2019_yr$BE, df2019_yr$sub_date_m)
x <- df2019_yr %>% 
  pivot_wider(names_from = sub_date_m, values_from = n, names_sort = TRUE)

df2019_yr_graph <- df2019_yr %>% 
  ggplot(aes(x = sub_date_m, y = n, fill = BE))+
    geom_bar(stat = "identity") +
    scale_fill_manual(values = c("#00bc4b","#0072BC","#2600bc"))+
  labs(title = "2019 Monitoring Cycle ",
       subtitle = "UNHCR LIVELIHOODS",
       x = "",
       y = "Number of submissions",
       shape = "",
       col = "")
df2019_yr_graph



df2019_yr <- df2019_all %>% 
  mutate(sub_date = format(sub_date, "%m-%d")) %>% 
  mutate(sub_date = as.Date(sub_date, "%m-%d")) %>% 
  #group_by(BE, sub_date) %>% 
  #count() %>% 
  ggplot(aes(x = sub_date, fill = BE))+
  geom_bar(position="stack", stat="bin", binwidth = 30)+
  scale_x_date(date_labels = "%b",
               date_breaks = "1 months")+
  scale_fill_manual(values = c("#00bc4b", "#0072BC","#2600bc"))+
  labs(title = "2019 Monitoring Cycle ",
       subtitle = "UNHCR LIVELIHOODS",
       x = "",
       y = "Number of submissions per week",
       shape = "",
       col = "")


df2019_yr
