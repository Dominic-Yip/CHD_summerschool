## data visualization 

frames <- here("Analysis", "Data", "frames_ex2.csv") %>% read_csv()

frames_small <- frames %>% 
  group_by(id, gender, age, condition) %>%
  summarize(response = mean(response)) %>%
  ungroup()

## basic histograms 
frames_small %>% 
  ggplot(aes(x = age)) + 
  geom_histogram()

## scatterplots with color 

frames_small %>% 
  ggplot(
    mapping = aes(
      x = age,
      y = response,
      color = condition 
    ))
+ geom_point()









