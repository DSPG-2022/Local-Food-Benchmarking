library("readxl")

df <- read_excel("/Users/maxwellskinner/Desktop/ag_commod_futures.xlsx")
View(df)



df1 <- df[df$Dates >= "2016-01-01" & df$Dates <= "2021-12-31", ]

View(df1)

df2 <- df1
df2$year <- strftime(df1$Dates, "%Y")
df2$month <- strftime(df1$Dates, "%m")

View(df2)

library("lubridate")
library("dplyr")

df2$year_month <- floor_date(df2$Dates, "month")

data_aggr <- df2 %>% group_by(year_month) %>% dplyr::summarize(GLD_US_Equity = mean(GLD_US_Equity),
                                                               BCOM_Index = mean(BCOM_Index), 
                                                               USO_US_Equity = mean(USO_US_Equity), 
                                                               USGG10YR_Index = mean(USGG10YR_Index),
                                                               CPURNSA_Index = mean(CPURNSA_Index)) %>% as.data.frame()

library("writexl")
write_xlsx(data_aggr, "/Users/maxwellskinner/Desktop/ag_commod_futures_cleaned.xlsx")

