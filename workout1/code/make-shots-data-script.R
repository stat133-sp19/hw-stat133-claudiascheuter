#title: workout01 GSW shot charts
#description: This is a workout assignment for STAT133 using the Golden State Warriors (GSW)
#players’ statistics of the season 2016/2107
#inputs: 5 csv files containing the statistics of each player (named firstname-lastname.csv).
#outputs: One csv file called shots-data.csv that contains variables from all 5 input csv files (=one global file)

#call in libraries
library(dplyr)
library(tidyverse)

#Data Preparation
curry <- read.csv("../data/stephen-curry.csv", header = TRUE, sep = ",", stringsAsFactors = FALSE)
curry$name <- c(rep("Stephen Curry", length.out = 1250))
curry <- mutate(curry, shot_made_flag = recode(shot_made_flag, "y" = "shot_yes",
                                               "n" = "shot_no"))
curry <- mutate(curry, minute = (period*12 - minutes_remaining))
sink("../output/stephen-curry.txt")
print(summary(curry))
sink()

iguodala <- read.csv("../data/andre-iguodala.csv",header = TRUE, sep = ",", stringsAsFactors = FALSE)
iguodala$name <- c(rep("Andre Iguodala", length.out = 371))
iguodala <- mutate(iguodala, shot_made_flag = recode(shot_made_flag, "y" = "shot_yes",
                                               "n" = "shot_no"))
iguodala <- mutate(iguodala, minute = (period*12 - minutes_remaining))
sink("../output/andre-iguodala.txt")
print(summary(iguodala))
sink()

green <- read.csv("../data/draymond-green.csv",header = TRUE, sep = ",", stringsAsFactors = FALSE)
green$name <- c(rep("Draymond Green", length.out = 578))
green <- mutate(green, shot_made_flag = recode(shot_made_flag, "y" = "shot_yes",
                                               "n" = "shot_no"))
green <- mutate(green, minute = (period*12 - minutes_remaining))
sink("../output/draymond-green.txt")
print(summary(green))
sink()

durant <-read.csv("../data/kevin-durant.csv",header = TRUE, sep = ",", stringsAsFactors = FALSE) 
durant$name <- c(rep("Kevin Durant", length.out = 915))
durant <- mutate(durant, shot_made_flag = recode(shot_made_flag, "y" = "shot_yes",
                                               "n" = "shot_no"))
durant <- mutate(durant, minute = (period*12 - minutes_remaining))
sink("../output/kevin-durant.txt")
print(summary(durant))
sink()

thompson <- read.csv("../data/klay-thompson.csv",header = TRUE, sep = ",", stringsAsFactors = FALSE) 
thompson$name <- c(rep("Klay Thompson", length.out = 1220))
thompson <- mutate(thompson, shot_made_flag = recode(shot_made_flag, "y" = "shot_yes",
                                               "n" = "shot_no"))
thompson <- mutate(thompson, minute = (period*12 - minutes_remaining))
sink("../output/klay-thompson.txt")
print(summary(curry))
sink()

#generate a single data frame using rbind
shots_data <- rbind(curry, durant, green, iguodala, thompson)

#export csv file
write.csv(shots_data, file = "../data/shots-data.csv",row.names=FALSE)

#send summary output of shots_data to output
sink("../output/shots-data.txt")
print(summary(shots_data))
sink()
