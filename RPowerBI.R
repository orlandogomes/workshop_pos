#Workshop Pós .Net - RPowerBI

#Packages
install.packages("ggplot2")
install.packages("dplyr")
library("ggplot2")
library("dplyr")


#Base
str(airquality)
head(airquality,n=10)


#Plot I (Temp x Ozone - Correlation)
plot(Ozone~Temp,data=airquality,pch=19,
     xlab="Temperatura",
     ylab="Ozone",
     main="Temperatura x Ozonio")


#Plot II (Temp x Month - Density)
ggplot(airquality,aes(Temp))+
  geom_density(fill=c("lightblue"))+
  facet_grid(~Month)+
  theme_bw()+
  ggtitle("Variação Temperatura - Mês")+
  labs(x="Temperatura",y="Densidade")

#Plot III (Temp - Bar)
ggplot(airquality,aes(Temp))+
  geom_bar()+
  theme_bw()+
  ggtitle("Variação Temperatura - Mês")+
  labs(x="Temperatura",y="Densidade")



#Query Editor

#Valores Nulos
library("dplyr")
airquality <- airquality %>%
  mutate(Ozone = replace(Ozone, is.na(Ozone) == TRUE, 42)) %>%
  mutate(Solar.R = replace(Solar.R, is.na(Solar.R) == TRUE, 186))

#Nome Mes
library("dplyr")
airquality <- airquality %>%
  mutate(Month=replace(Month,Month==5,"Maio"))

airquality <- airquality %>%
  mutate(Month=replace(Month,Month==6,"Junho"))

airquality <- airquality %>%
  mutate(Month=replace(Month,Month==7,"Julho"))

airquality <- airquality %>%
  mutate(Month=replace(Month,Month==8,"Agosto"))

airquality <- airquality %>%
  mutate(Month=replace(Month,Month==9,"Setembro"))





#Cargas Mês
may_data <- airquality %>% select(Month, Temp, Wind) %>%
  filter(Month == "5") %>%
  mutate(Month = replace(Month, Month == 5, "Maio"))

june_data <- airquality %>% select(Month, Temp, Wind) %>%
  filter(Month == "6") %>%
  mutate(Month = replace(Month, Month == 6, "Junho"))

july_data <- airquality %>% select(Month, Temp, Wind) %>%
  filter(Month == "7") %>%
  mutate(Month = replace(Month, Month == 7, "Julho"))


august_data <- airquality %>% select(Month, Temp, Wind) %>%
  filter(Month == "8") %>%
  mutate(Month = replace(Month, Month == 8, "Agosto"))


september_data <- airquality %>% select(Month, Temp, Wind) %>%
  filter(Month == "9") %>%
  mutate(Month = replace(Month, Month == 9, "Setembro"))



