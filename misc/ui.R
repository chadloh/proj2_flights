library(dashboardthemes)
library(shinydashboard)

# Define UI for application that draws a histogram

dashboardPage(
  dashboardHeader(title = "NYC Flights"),
  dashboardSidebar(
    sidebarMenu(
      menuItem("Flights", tabName = "plots", icon = icon("map")),
      menuItem("Airports", tabName = "data", icon = icon("database")),
      menuItem("Map", tabName = 'maps', icon = icon("map"))),
    # checkboxGroupInput("airlines", label = h3("Airlines"), 
    #                    choices = list("American" = "American", "Delta" = "Delta", "Southwest" = "Southwest", "Spirit" = "Spirit", "Frontier" = "Frontier", 
    #                                   "United"= "United", "Skywest" = "Skywest", "Jetblue" = "Jetblue", "Alaska"="Alaska", "Hawaiian" = "Hawaiian"),
    #                    selected = c("American" , "Delta", "Southwest", "Spirit", "Frontier", "United", "Skywest", "Jetblue", "Alaska", "Hawaiian")
    # )
    radioButtons("airlines", label = h3("Airlines"),
                 choices = list("Top10" = "Top10", "Top4" = "Top4", 
                                "American" = "American", "Delta" = "Delta", "Southwest" = "Southwest", "Spirit" = "Spirit", "Frontier" = "Frontier", 
                                "United"= "United", "Skywest" = "Skywest", "Jetblue" = "Jetblue", "Alaska"="Alaska", "Hawaiian" = "Hawaiian"),
                 selected = "Spirit")
  ),
  
  
  dashboardBody(
    box(
      title = h1("The United States has the largest air travel market"),
      width = NULL, solidHeader = TRUE, background = 'black',
      p("Flight routes with more than 100,000 passengers per year"),
        imageOutput("distPlot", width = '1200', height = '600', inline = FALSE)),
    
    shinyDashboardThemes(theme = "grey_dark")
  )
)

