
# 2021 Regional charts--------------------------------------------------------------------

# West and Central Africa  ------------------------------------------------
df2021_graph_w_c_af <- df2021_all %>% 
  filter(Region == "West/Central Africa") %>% 
  ggplot(aes(x = sub_date, y= country, col= BE)) +
  geom_point(aes(shape = BE), size = 3) +
  scale_x_date(date_labels = "%b.%y",
               date_breaks = "2 months") +
  scale_shape_manual(values = c(20, 15,15))+
  scale_color_manual(values = c("#00bc4b","#0072BC","#2600bc"))+
  labs(title = "Data submissions 2021 Monitoring Cycle - UNHCR LIVELIHOODS",
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
df2021_graph_e_h_af <- df2021_all %>% 
  filter(Region == "East/Horn of Africa") %>% 
  ggplot(aes(x = sub_date, y= country, col= BE)) +
  geom_point(aes(shape = BE), size = 3) +
  scale_x_date(date_labels = "%b.%y",
               date_breaks = "2 months") +
  scale_shape_manual(values = c(20, 15,15))+
  scale_color_manual(values = c("#00bc4b","#0072BC","#2600bc"))+
  labs(title = "Data submissions 2021 Monitoring Cycle - UNHCR LIVELIHOODS",
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
df2021_graph_s_af <- df2021_all %>% 
  filter(Region == "Southern Africa") %>% 
  ggplot(aes(x = sub_date, y= country, col= BE)) +
  geom_point(aes(shape = BE), size = 3) +
  scale_x_date(date_labels = "%b.%y",
               date_breaks = "2 months") +
  scale_shape_manual(values = c(20, 15,15))+
  scale_color_manual(values = c("#00bc4b","#0072BC","#2600bc"))+
  labs(title = "Data submissions 2021 Monitoring Cycle - UNHCR LIVELIHOODS",
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
df2021_graph_MENA <- df2021_all %>% 
  filter(Region == "MENA") %>% 
  ggplot(aes(x = sub_date, y= country, col= BE)) +
  geom_point(aes(shape = BE), size = 3) +
  scale_x_date(date_labels = "%b.%y",
               date_breaks = "2 months") +
  scale_shape_manual(values = c(20, 15,15))+
  scale_color_manual(values = c("#00bc4b","#0072BC","#2600bc"))+
  labs(title = "Data submissions 2021 Monitoring Cycle - UNHCR LIVELIHOODS",
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
df2021_graph_latam <- df2021_all %>% 
  filter(Region == "Latin America") %>% 
  ggplot(aes(x = sub_date, y= country, col= BE)) +
  geom_point(aes(shape = BE), size = 3) +
  scale_x_date(date_labels = "%b.%y",
               date_breaks = "2 months") +
  scale_shape_manual(values = c(20, 15,15))+
  scale_color_manual(values = c("#00bc4b","#0072BC","#2600bc"))+
  labs(title = "Data submissions 2021 Monitoring Cycle - UNHCR LIVELIHOODS",
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
df2021_graph_eu <- df2021_all %>% 
  filter(Region == "Europe") %>% 
  ggplot(aes(x = sub_date, y= country, col= BE)) +
  geom_point(aes(shape = BE), size = 3) +
  scale_x_date(date_labels = "%b.%y",
               date_breaks = "2 months") +
  scale_shape_manual(values = c(20, 15,15))+
  scale_color_manual(values = c("#00bc4b","#0072BC","#2600bc"))+
  labs(title = "Data submissions 2021 Monitoring Cycle - UNHCR LIVELIHOODS",
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
df2021_graph_asia <- df2021_all %>% 
  filter(Region == "Asia") %>% 
  ggplot(aes(x = sub_date, y= country, col= BE)) +
  geom_point(aes(shape = BE), size = 3) +
  scale_x_date(date_labels = "%b.%y",
               date_breaks = "2 months") +
  scale_shape_manual(values = c(20, 15,15))+
  scale_color_manual(values = c("#00bc4b","#0072BC","#2600bc"))+
  labs(title = "Data submissions 2021 Monitoring Cycle - UNHCR LIVELIHOODS",
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
df2021_graph_w_c_af / df2021_graph_e_h_af / df2021_graph_s_af


# All countries 1 graph -----------------------------------------------------
df2021_graph <- df2021_all %>% 
  ggplot(aes(x = sub_date, y= country, col= BE)) +
  geom_point(aes(shape = BE), size = 3) +
  scale_x_date(date_labels = "%b.%y",
               date_breaks = "1 months") +
  scale_shape_manual(values = c(20, 15,15))+
  scale_color_manual(values = c("#00bc4b","#0072BC","#2600bc"))+
  labs(title = "Data submissions 2021 Monitoring Cycle - UNHCR LIVELIHOODS",
       x = NULL, y = NULL, shape = NULL,col = NULL)+
  theme(legend.position = "bottom",
        legend.key = element_rect(fill = "white"),
        axis.text.x = element_text(angle = 45, hjust = 1),
        panel.grid.major.x = element_line(colour =  "grey60", linetype = 15, size = 0.4),
        # panel.grid.minor.x = element_line(colour =  "grey60", linetype = 1, size = 0.1),
        panel.grid.major.y = element_line(colour =  "grey90", linetype = 1, size = 3),
        panel.background = element_rect(fill = "white"),
        axis.ticks.y = element_blank(),
  )

df2021_graph
df2021_graph <- ggMarginal(df2021_graph,
                           type = "density",
                           size = 5,
                           groupColour = TRUE, 
                           groupFill = TRUE)

df2021_graph

