#title: workout01 GSW shot charts - data visualization
#description: This is a workout assignment for STAT133 using the Golden State Warriors (GSW)
#players’ statistics of the season 2016/2107
#inputs: one csv files containing the statistics of each player (named shots_data.csv).
#outputs: pdfs of each players' shot charts

#load libraries
library(dplyr)
library(ggplot2)
library(grid)
library(jpeg)

#court image (use this as background of plots)
court_file <- "../images/nba-court.jpg"

#create raste object
court_image <- rasterGrob(
  readJPEG(court_file),
  width = unit(1, "npc"),
  height = unit(1, "npc"))

#shot charts of individual players
#stephen curry
curry_shot_chart <- ggplot(data = curry)+
  annotation_custom(court_image, -250, 250, -50, 420)+
  geom_point(aes(x = x, y = y, color = shot_made_flag))+
  ylim(-50, 420) +
  ggtitle('Shot Chart: Stephen Curry (2016 Season')+
  theme_minimal()

pdf("../images/stephen-curry-shot-chart.pdf", width = 6.5, height = 5)
curry_shot_chart
dev.off()

#kevin durant
durant_shot_chart <- ggplot(data = durant)+
  annotation_custom(court_image, -250, 250, -50, 420)+
  geom_point(aes(x=x, y=y, color = shot_made_flag))+
  ylim(-50, 420)+
  ggtitle('Shot Chart: Kevin Durant (2016 Season')+
  theme_minimal()

pdf("../images/kevin-durant-shot-chart.pdf", width = 6.5, height = 5)
durant_shot_chart
dev.off()

#draymond green
green_shot_chart <- ggplot(data = durant)+
  annotation_custom(court_image, -250, 250, -50, 420)+
  geom_point(aes(x=x, y=y, color= shot_made_flag))+
  ylim(-50, 420)+
  ggtitle('Shot Chart: Draymond Green (2016 Season')

pdf("../images/draymond-green-shot-chart.pdf", width = 6.5, height = 5)
green_shot_chart
dev.off()

#andre iguodala
iguodala_shot_chart <- ggplot(data = iguodala)+
  annotation_custom(court_image, -250, 250, -50, 420)+
  geom_point(aes(x=x, y=y, color = shot_made_flag))+
  ylim(-50, 420)+
  ggtitle('Shot Chart: Andre Iguodala (2016 Season')+
  theme_minimal()

pdf("../images/andre-iguodala-shot-chart.pdf", width = 6.5, height = 5)
iguodala_shot_chart
dev.off()


#klay thompson
thompson_shot_chart <- ggplot(data = thompson) +
  annotation_custom(court_image, -250, 250, -50, 420) +
  geom_point(aes(x = x, y = y, color = shot_made_flag)) +
  ylim(-50, 420) +
  ggtitle('Shot Chart: Klay Thompson (2016 season)') +
  theme_minimal()

pdf("../images/klay-thompson-shot-chart.pdf", width = 6.5, height = 5)
thompson_shot_chart
dev.off()

#faceted shot chart
gsw_shot_chart <- ggplot(data = shots_data)+
  annotation_custom(court_image, -250, 250, -50, 420) +
  geom_point(aes(x = x, y = y, color = shot_made_flag)) +
  ylim(-50, 420) +
  ggtitle('Shot Charts: GSW (2016 season)') +
  theme_minimal()+
  facet_wrap(~ name)

pdf("../images/gsw-shot-charts.pdf", width = 8, height = 7)
gsw_shot_chart
dev.off()

png("../images/gsw-shot-charts.png", width = 8, height = 7, units = "in", res = 112)
gsw_shot_chart
dev.off()
