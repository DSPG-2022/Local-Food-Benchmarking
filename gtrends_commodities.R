library(gtrendsR)
library(tidyverse)
library(ggthemes)
library(dplyr)
library(ggplot2)
library(maps)
library(trendecon)


#Plotting entire list of commodities onto a time series chart

trendecon_output = ts_gtrends(keyword = c("apple", "watermelon", "strawberry", "raspberry", "plum", "pear"),
                              time = "2019-01-01 2019-12-30", geo = "US-IA")

View(trendecon_output)

trendecon_output1 = ts_gtrends(keyword = c("tomato", "cucumber", "green bean", "squash", "lettuce", "pepper", "pumpkin", "sweet corn", "potato"),
                               time = "2019-01-01 2019-12-30", geo = "US-IA")

trendecon_plot = ggplot() +
  geom_line(data = trendecon_output, aes(x = time, y = value, color = id)) + 
  geom_line(data = trendecon_output1, aes(x = time, y = value, color = id)) +
  facet_wrap(facets = vars(id)) +
  ggtitle("Total List of Commodities") + 
  labs (y = "View Scale", x = "Dates")

trendecon_plot


#Plotting Singular Versus Plural Keywords

plural = ts_gtrends(keyword = c("apples", "watermelons", "strawberries", "raspberries", "plums", "pears"),
                    time = "2019-01-01 2019-12-30", geo = "US-IA")

singular_vs_plural = ggplot() +
  geom_line(data = trendecon_output, aes(x = time, y = value, color = id)) + 
  geom_line(data = plural, aes(x = time, y = value, color = id)) +
  facet_wrap(facets = vars(id)) +
  ggtitle("Comparing Singular Versus Plural Keyword Trends") + 
  labs (y = "View Scale", x = "Dates")

singular_vs_plural


#Filtering using specific food category

data("categories")

#71: Food and Drink
#121: Grocery & Food Retailers
#621: Food Production
#918: Fast Food
#957: Food Service


no_category = ts_gtrends(keyword = c("strawberries", "peppers", "cucumbers", "sweet corn", "melons"),
                 geo = "US-IA",
                 time ="2021-01-01 2021-12-31"
)

grocery = ts_gtrends(keyword = c("strawberries", "peppers", "cucumbers", "sweet corn", "melons"),
                    geo = "US-IA", time ="2021-01-01 2021-12-31", category = 121)


food_production = ts_gtrends(keyword = c("strawberries", "peppers", "cucumbers", "sweet corn", "melons"),
                          geo = "US-IA", time ="2021-01-01 2021-12-31", category = 621)


food_and_drink = ts_gtrends(keyword = c("strawberries", "peppers", "cucumbers", "sweet corn", "melons"),
                         geo = "US-IA", time ="2021-01-01 2021-12-31", category = 71)


category_visual = ggplot() +
  geom_line(data = no_category, aes(x = time, y = value, color = id)) + 
  facet_wrap(facets = vars(id)) +
  ggtitle("No Category") + 
  labs (y = "View Scale", x = "Dates")

category_visual

category_visual = ggplot() +
  geom_line(data = grocery, aes(x = time, y = value, color = id)) + 
  facet_wrap(facets = vars(id)) +
  ggtitle("Grocery Category") + 
  labs (y = "View Scale", x = "Dates")

cat

category_visual = ggplot() +
  geom_line(data = food_production, aes(x = time, y = value, color = id)) + 
  facet_wrap(facets = vars(id)) +
  ggtitle("Food Production Category") + 
  labs (y = "View Scale", x = "Dates")

category_visual = ggplot() +
  geom_line(data = food_and_drink, aes(x = time, y = value, color = id)) + 
  facet_wrap(facets = vars(id)) +
  ggtitle("Food and Drink Category") + 
  labs (y = "View Scale", x = "Dates")




gtrends_plot = ts_gtrends(keyword = c("strawberries", "peppers", "cucumbers", "sweet corn", "melons"),
                          time = "2016-01-01 2021-12-30", geo = "US-IA")


gtrends_plot = ggplot() +
  geom_line(data = trendecon_output, aes(x = time, y = value, color = id)) + 
  facet_wrap(facets = vars(id)) +
  ggtitle("Google Trends of Argricultural Items from 2019") + 
  labs (y = "View Scale", x = "Dates")

gtrends_plot



