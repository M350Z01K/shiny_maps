library(shiny)

ui = fluidPage(
  
  titlePanel("Mauritius Island"),
  
  mainPanel(
    leafletOutput("mymap", height = 500)
  )
    
)


server = function(input, output, session) {
  output$mymap = renderLeaflet({
  leaflet("mymap")%>%
    setView(lng = 57.576599, lat = -20.25, zoom = 10)%>%
      addTiles()
})
}

shinyApp(ui, server)
