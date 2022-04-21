
### Preamble ###
# Purpose: clean the data
# Author: Xiaoyuan Xing
# Date: April 21 2022
# Contact: xiaoyuan.xing@mail.utoronto.ca
# Pre-req: None


# Use R Projects, not setwd().
library(tidyverse)
library(opendatatoronto)
library(ggplot2)
library(gridExtra)
###Load Dataset###
library(readr)
neighbourhood_crime_rates <- read_csv("~/Desktop/STA304 FINAL/neighbourhood-crime-rates.csv")

###Data Clean###
data <- neighbourhood_crime_rates %>%
  mutate(Assault_in_total = Assault_2014 + Assault_2015 + Assault_2016 + Assault_2017 + Assault_2018 + Assault_2019 + Assault_2020) %>%
  mutate(AutoTheft_in_total = AutoTheft_2014 + AutoTheft_2015 + AutoTheft_2016 + AutoTheft_2017 + AutoTheft_2018 + AutoTheft_2019 + AutoTheft_2020) %>%
  mutate(BreakAndEnter_in_total = BreakAndEnter_2014 + BreakAndEnter_2015 + BreakAndEnter_2016 + BreakAndEnter_2017 + BreakAndEnter_2018 + BreakAndEnter_2019 + BreakAndEnter_2020) %>%
  mutate(Robbery_in_total = Robbery_2014 + Robbery_2015 + Robbery_2016 + Robbery_2017 + Robbery_2018 + Robbery_2019 + Robbery_2020) %>%
  mutate(TheftOver_in_total = TheftOver_2014 + TheftOver_2015 + TheftOver_2016 + TheftOver_2017 + TheftOver_2018 + TheftOver_2019 + TheftOver_2020) %>%
  mutate(Homicide_in_total = Homicide_2014 + Homicide_2015 + Homicide_2016 + Homicide_2017 +Homicide_2018 + Homicide_2019 + Homicide_2020) %>%
  mutate(Shooting_in_total = Shootings_2014 + Shootings_2015 + Shootings_2016 + Shootings_2017 + Shootings_2018 + Shootings_2019 + Shootings_2020) %>%
  mutate(Crime_rate_in_total = Assault_Rate2014 + Assault_Rate2015 + Assault_Rate2016 + Assault_Rate2017 + Assault_Rate2018 + Assault_Rate2019 + Assault_Rate2020 + AutoTheft_Rate2014 + AutoTheft_Rate2015 + AutoTheft_Rate2016 + AutoTheft_Rate2017 + AutoTheft_Rate2018	+ AutoTheft_Rate2019	+ AutoTheft_Rate2020 + BreakAndEnter_Rate2014	+ BreakAndEnter_Rate2015 + BreakAndEnter_Rate2016 + BreakAndEnter_Rate2017 + BreakAndEnter_Rate2018 + BreakAndEnter_Rate2019	+ BreakAndEnter_Rate2020 + Robbery_Rate2014 + RobberyRate_2015	+ Robbery_Rate2016	+ Robbery_Rate2017	+ Robbery_Rate2018	+ Robbery_Rate2019 + Robbery_Rate2020 + TheftOver_Rate2014	+ TheftOver_Rate2015	+ TheftOver_Rate2016 + TheftOver_Rate2017 + TheftOver_Rate2018 + TheftOver_Rate2019	+ TheftOver_Rate2020 + Homicide_Rate2014	+ Homicide_Rate2015	+ Homicide_Rate2016	+ Homicide_Rate2017 + Homicide_Rate2018	+ Homicide_Rate2019	+ Homicide_Rate2020 + Shooting_Rate2014 + Shootings_Rate2015 + Shootings_Rate2016 + Shootings_Rate2017+ Shootings_Rate2018 + Shootings_Rate2019 +Shootings_Rate2020) %>%
  mutate(Crime_in_total = Assault_in_total + AutoTheft_in_total + BreakAndEnter_in_total + Robbery_in_total + TheftOver_in_total + Homicide_in_total +Shooting_in_total)
write.csv(data,file='data.csv')



         