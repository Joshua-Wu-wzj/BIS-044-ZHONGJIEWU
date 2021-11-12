if (!require("tidyverse")) install.packages("tidyverse")
library(readxl)
dataset1 <- read_excel("C:/Users/wuzho/Desktop/Lehigh University/Lehigh 2021 Fall/BIS 044/dataset1.xls")

attach(dataset1)

library(tidyverse)
dataset_replaced <- dataset1 %>% 
  mutate(Title=replace(Title,Title=="Aldermen","Alderman"),
                           Title=replace(Title,Title=="Clerk","Clerk of Court"),
                           Title=replace(Title,Title=="Constable(s)","Constable"),
                           Title=replace(Title,Title=="Mayor-President","Mayor"),
                           Title=replace(Title,Title=="Council Member at Large","Council Member"),
                           Title=replace(Title,Title=="Council Member(s)","Council Member"),
                           Title=replace(Title,Title=="Council Member I","Council Member"),
                           Title=replace(Title,Title=="Council Member II","Council Member"),
                           Title=replace(Title,Title=="Council Member III","Council Member"),
                           Title=replace(Title,Title=="Councilman at Large","Council Member"),
                           Title=replace(Title,Title=="Councilman","Council Member"),
                           Title=replace(Title,Title=="Judge, Court of Appeal","Judge"),
                           Title=replace(Title,Title=="District Judge","Judge"),
                           Title=replace(Title,Title=="City Judge","Judge"),
                           Title=replace(Title,Title=="City Judge, City Court","Judge"),
                           Title=replace(Title,Title=="Councilmember","Council Member"),
                           Title=replace(Title,Title=="Councilmember at Large","Council Member"),
                           Title=replace(Title,Title=="Councilmen","Council Member"),
                           Title=replace(Title,Title=="Judge, Family Court","Judge"),
                           Title=replace(Title,Title=="Justice of the Peace(s)","Justice of the Peace"),
                           Title=replace(Title,Title=="Justice of the Peace, Parishwide","Justice of the Peace"),
                           
                           
)
View(dataset_replaced)

View(count(dataset_replaced,Title))


