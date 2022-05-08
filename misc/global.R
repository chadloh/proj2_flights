library(shiny)
library(tidyverse)
library(data.table)
library(geosphere)
library(maps)
library(sp)
library(grid)
library(ggrepel)
library(png)
library(cowplot)

# import data
df_plot         <- read.csv("data/df_plot.csv")
flights_pair        <- read.csv('data/flights_pair.csv')
airports         <- read.csv('data/airports.csv')
base_world <- map_data("state")
airline_legend <- readPNG('img/airlines-12.png')


# input data
airline_color = c('#777EBD', '#F1F2F2', '#ED0000', '#45CC33', '#BF00CC', 
                  '#47CCFF', '#4FCCD7', '#FFCC00', '#FFFF00', '#005EFF')
airline_name = c('Alaska', 'American', 'Delta', 'Frontier', 'Hawaiian',
                 'Jetblue', 'Skywest', 'Southwest', 'Spirit', 'United')

