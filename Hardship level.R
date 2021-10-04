# operations by hardship --------------------------------------------------

df_hard <- df %>% 
  select(2,3,4,6) %>% 
  group_by(year, hardship_cat) %>% 
  tally() %>%
  mutate(freq = sum(n),
         prop = n/freq) %>% 
  arrange(hardship_cat)
df_hard  


cc <- scales::seq_gradient_pal("olivedrab",  "tomato3")(seq(0,1,length.out=5))

df_hard_graph_pct <-   ggplot(df_hard,
                              aes(x = year, y = prop, fill = hardship_cat , color = hardship_cat))+
  geom_bar(stat = "identity")+
  scale_fill_manual(values = cc)+
  scale_color_manual(values = cc)+
  scale_y_percent()+
  # coord_flip()+
  theme(legend.position = "none",
    panel.background = element_rect(fill = "white"),
    axis.ticks.y = element_blank()) +
  labs(title = NULL,
       x = "Monitoring cycle", y = "% of total duty stations submitting data",
       color = NULL,
       fill = NULL )

df_hard_graph_pct

df_hard_graph_abs <-   ggplot(df_hard,
                              aes(x = year, y = n, fill = hardship_cat , color = hardship_cat))+
  geom_bar(stat = "identity")+
  scale_fill_manual(values = cc)+
  scale_color_manual(values = cc)+
  
  # coord_flip()+
  theme(legend.position = NULL,
        panel.background = element_rect(fill = "white"),
        axis.ticks.y = element_blank())+
  labs(title = "Duty stations using LIS by hardship level per monitoirng cycle - UNHCR LIVELIHOODS",
       x = NULL, y = "Total duty stations submitting data",
       color = "Hardship level",
       fill = "Hardship level" )

df_hard_graph_abs /df_hard_graph_pct

