library(gtrendsR)
library(tidyverse)
library(ggthemes)
# "US-KY","US-IA","US-IL","US-IN","US-MO","US-MI","US-MN","US-WI","US-OH"
output = gtrends(keyword = c("strawberries", "peppers", "cucumbers", "sweet corn", "melons"),
                 geo = c("US-KY","US-IA","US-IL","US-IN","US-MO"),
                 time ="2016-01-01 2021-12-31"
)


#Output will be a list. Find the data needed in the list
hitss = output$interest_over_time
hitss$year = format(as.Date(hitss$date, format="%Y-%m-%d"),"%Y")
hitss$month = format(as.Date(hitss$date, format="%Y-%m-%d"),"%m")


hitss %>% filter(keyword == "peppers") %>% ggplot(aes((month), hits,
                                                      group=factor(year),
                                                      colour=factor(year))) +
  geom_line() +
  geom_point() +
  labs(x="Month", colour="Year") +
  theme_classic()+
  labs(title="peppers'")


hitss %>% filter(keyword == "strawberries") %>% ggplot(aes((month), hits,
                                                           group=factor(year),
                                                           colour=factor(year))) +
  geom_line() +
  geom_point() +
  labs(x="Month", colour="Year") +
  theme_classic()+
  labs(title="Strawberries'")


hitss %>% filter(keyword == "cucumbers") %>% ggplot(aes((month), hits,
                                                        group=factor(year),
                                                        colour=factor(year))) +
  geom_line() +
  geom_point() +
  labs(x="Month", colour="Year") +
  theme_classic()+
  labs(title="Cucumbers")


hitss %>% filter(keyword == "sweet corn") %>% ggplot(aes((month), hits,
                                                         group=factor(year),
                                                         colour=factor(year))) +
  geom_line() +
  geom_point() +
  labs(x="Month", colour="Year") +
  theme_classic()+
  labs(title="Sweet Corn")


hitss %>% filter(keyword == "melons") %>% ggplot(aes((month), hits,
                                                     group=factor(year),
                                                     colour=factor(year))) +
  geom_line() +
  geom_point() +
  labs(x="Month", colour="Year") +
  theme_classic()+
  labs(title="Melons")


hitss %>% filter(year == "2016") %>% ggplot(aes((month), hits,
                                                group=factor(keyword),
                                                colour=factor(keyword))) +
  geom_line() +
  geom_point() +
  labs(x="Month", colour="Keywords") +
  theme_classic()+
  labs(title="2016")


hitss %>% filter(year == "2017") %>% ggplot(aes((month), hits,
                                                group=factor(keyword),
                                                colour=factor(keyword))) +
  geom_line() +
  geom_point() +
  labs(x="Month", colour="Keywords") +
  theme_classic()+
  labs(title="2017")


hitss %>% filter(year == "2018") %>% ggplot(aes((month), hits,
                                                group=factor(keyword),
                                                colour=factor(keyword))) +
  geom_line() +
  geom_point() +
  labs(x="Month", colour="Keywords") +
  theme_classic()+
  labs(title="2018")


hitss %>% filter(year == "2019") %>% ggplot(aes((month), hits,
                                                group=factor(keyword),
                                                colour=factor(keyword))) +
  geom_line() +
  geom_point() +
  labs(x="Month", colour="Keywords") +
  theme_classic()+
  labs(title="2019")


hitss %>% filter(year == "2020") %>% ggplot(aes((month), hits,
                                                group=factor(keyword),
                                                colour=factor(keyword))) +
  geom_line() +
  geom_point() +
  labs(x="Month", colour="Keywords") +
  theme_classic()+
  labs(title="2020")


hitss %>% filter(year == "2021") %>% ggplot(aes((month), hits,
                                                group=factor(keyword),
                                                colour=factor(keyword))) +
  geom_line() +
  geom_point() +
  labs(x="Month", colour="Keywords") +
  theme_classic()+
  labs(title="2021")




dairy_output = gtrends(keyword = c("milk", "eggs", "cheese", "dairy"),
                       geo = "US",
                       time ="2016-01-01 2021-12-31"
)


dairy_hitss = dairy_output$interest_over_time
dairy_hitss$year = format(as.Date(dairy_hitss$date, format="%Y-%m-%d"),"%Y")
dairy_hitss$month = format(as.Date(dairy_hitss$date, format="%Y-%m-%d"),"%m")



dairy_hitss %>% filter(keyword == "milk") %>% ggplot(aes((month), hits,
                                                         group=factor(year),
                                                         colour=factor(year))) +
  geom_line() +
  geom_point() +
  labs(x="Month", colour="Year") +
  theme_classic()+
  labs(title="Milk")


dairy_hitss %>% filter(keyword == "eggs") %>% ggplot(aes((month), hits,
                                                         group=factor(year),
                                                         colour=factor(year))) +
  geom_line() +
  geom_point() +
  labs(x="Month", colour="Year") +
  theme_classic()+
  labs(title="Eggs")


dairy_hitss %>% filter(keyword == "cheese") %>% ggplot(aes((month), hits,
                                                           group=factor(year),
                                                           colour=factor(year))) +
  geom_line() +
  geom_point() +
  labs(x="Month", colour="Year") +
  theme_classic()+
  labs(title="Cheese")


dairy_hitss %>% filter(keyword == "dairy") %>% ggplot(aes((month), hits,
                                                          group=factor(year),
                                                          colour=factor(year))) +
  geom_line() +
  geom_point() +
  labs(x="Month", colour="Year") +
  theme_classic()+
  labs(title="Dairy")





dairy_hitss %>% filter(year == "2016") %>% ggplot(aes((month), hits,
                                                      group=factor(keyword),
                                                      colour=factor(keyword))) +
  geom_line() +
  geom_point() +
  labs(x="Month", colour="Keywords") +
  theme_classic()+
  labs(title="2016")


dairy_hitss %>% filter(year == "2017") %>% ggplot(aes((month), hits,
                                                      group=factor(keyword),
                                                      colour=factor(keyword))) +
  geom_line() +
  geom_point() +
  labs(x="Month", colour="Keywords") +
  theme_classic()+
  labs(title="2017")


dairy_hitss %>% filter(year == "2018") %>% ggplot(aes((month), hits,
                                                      group=factor(keyword),
                                                      colour=factor(keyword))) +
  geom_line() +
  geom_point() +
  labs(x="Month", colour="Keywords") +
  theme_classic()+
  labs(title="2018")

dairy_hitss %>% filter(year == "2019") %>% ggplot(aes((month), hits,
                                                      group=factor(keyword),
                                                      colour=factor(keyword))) +
  geom_line() +
  geom_point() +
  labs(x="Month", colour="Keywords") +
  theme_classic()+
  labs(title="2019")


dairy_hitss %>% filter(year == "2020") %>% ggplot(aes((month), hits,
                                                      group=factor(keyword),
                                                      colour=factor(keyword))) +
  geom_line() +
  geom_point() +
  labs(x="Month", colour="Keywords") +
  theme_classic()+
  labs(title="2020")


dairy_hitss %>% filter(year == "2021") %>% ggplot(aes((month), hits,
                                                      group=factor(keyword),
                                                      colour=factor(keyword))) +
  geom_line() +
  geom_point() +
  labs(x="Month", colour="Keywords") +
  theme_classic()+
  labs(title="2021")


pdf("gtrends_visualizations.pdf")
print()
print(hitss %>% filter(year == "2019") %>% ggplot(aes((month), hits,
                                                      group=factor(keyword),
                                                      colour=factor(keyword))) +
        geom_line() +
        geom_point() +
        labs(x="Month", colour="Keywords") +
        theme_classic()+
        labs(title="Trends of Keywords in 2019"))

print(hitss %>% filter(keyword == "peppers") %>% ggplot(aes((month), hits,
                                                            group=factor(year),
                                                            colour=factor(year))) +
        geom_line() +
        geom_point() +
        labs(x="Month", colour="Year") +
        theme_classic()+
        labs(title="Search Trends of 'peppers' from 2016-2021"))
dev.off()