pacman::p_load(tidyverse)

df <- read.csv("hw1_data 2.csv")
view(df)

df1 <- df[1:2,]
df2 <- df[152:153,]
print(df2)
print(df[47,'Ozone'])
sum(is.na(df$Ozone))
mean(df$Ozone, na.rm=TRUE)
df4 <- df %>% 
  filter(Ozone > 31 & Temp > 90) %>% 
  summarise(mean(Solar.R))
mean(df$Solar.R, na.rm=TRUE)

df %>%
  filter(Month == 6) %>% 
  summarise(mean(Temp))

df %>% 
  filter(Month == 5) %>% 
  slice(which.max(Ozone))

x <- 1:4
y <- 2
class(x + y)
