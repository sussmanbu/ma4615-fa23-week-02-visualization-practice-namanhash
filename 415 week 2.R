ls
library(ggplot2)
p <- ggplot(covid_data_long, aes(x= date, y = count, color = race)) + geom_line()
p
new_data_cases <- filter(covid_data_race, count_type == 'Cases')
rm(cases_total)
a <- covid_data_count %>% filter (race != 'Total') %>% select(-c('state', 'state_name', 'race'))
a
b <- aggregate(.~date, a, sum)
b
ggplot(b, aes(x=date)) + geom_line(aes(y=Deaths)) + geom_line(aes(y=Cases), color='red')+ geom_line(aes(y=Tests), color = 'blue')+geom_line(aes(y=Hosp), color='brown') +scale_y_continuous(trans = "log10")
ggplot(b, aes(x=date)) + geom_line(aes(y=Deaths)) + geom_line(aes(y=Cases), color='red')+ geom_line(aes(y=Tests), color = 'blue')+geom_line(aes(y=Hosp), color='brown')
