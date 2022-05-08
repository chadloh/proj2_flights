#
# This is the server logic of a Shiny web application. You can run the
# application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
#
#    http://shiny.rstudio.com/
#

library(shiny)

# Define server logic required to draw a histogram
shinyServer(function(input, output, session) {

    output$distPlot <- renderPlot({
      # width  <- session$clientData$output_figure_width
      if (input$airlines == "Top10"){
        airlines = c("American" , "Delta", "Southwest", "Spirit", "Frontier", "United", "Skywest", "Jetblue", "Alaska", "Hawaiian")
      } else if (input$airlines == "Top4"){
        airlines = c("American", "Southwest", "Delta", "United")
      } else {
        airlines = input$airlines
      }
      p <- ggplot() + 
        geom_polygon(data=base_world, aes(long, lat, group=group), fill="#ffffff11", color="#ffffff22") + 
        geom_line(data = df_plot %>% filter(carrier %in% airlines), aes(lon, lat, group=group, color=carrier, alpha = pass, size = pass)) + 
        geom_point(data = airports, aes(lon, lat), size=2, fill="#cccccc", color = "#eeeeee") +
        geom_text_repel(data = airports, aes(lon, lat, label=ports), size=5, color = "#cccccc") +
        scale_size("line", range = c(0.15, 0.85), limits = c(100000, 1500000)) +
        scale_alpha(range = c(0.15, 0.75)) +
        scale_color_manual(values=airline_color[airline_name %in% airlines]) +
        coord_fixed(xlim = c(-140, -65), ylim = c(20, 50)) +
        theme(axis.line=element_blank(),
              axis.text.x=element_blank(),
              axis.text.y=element_blank(),
              axis.ticks=element_blank(),
              axis.title.x=element_blank(),
              axis.title.y=element_blank(),
              panel.background=element_rect(fill='transparent'),
              plot.background = element_rect(fill='#111111', color=NA), 
              panel.border=element_blank(),
              panel.grid.major=element_blank(),
              panel.grid.minor=element_blank(),
              legend.position="none",
              aspect.ratio = 0.5)
      
      ggdraw(p) + 
        draw_image('img/airlines-12.png', x = 0.15, y=-0.4, width = 0.7)
      # ggsave('flights.png',p,height=9, width=12,dpi=300)
      # list(src = 'flights.png', contentType = 'image/png', width = width, height = width/2, alt = "flights")
    }, bg="transparent")

})
