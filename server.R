require('shiny')
require('lubridate')

fdbirth <- function(birth) round(difftime(now(),birth,units="days"),1)
fwbirth <- function(birth) round(difftime(now(),birth,units="weeks"),1)
fweekdbirth <- function(birth) wday(birth,label = TRUE, abbr = FALSE)

frange <- function(start,end) round(difftime(end,start,units="days"),1)

fweekdate <- function(date) wday(date,label = TRUE, abbr = FALSE)


shinyServer(function(input, output, session) {
        
        output$birth <- renderText({ paste("Your day of birth is:",input$birth) })
        
        output$dbirth <- renderText({ paste("Your are:",fdbirth(input$birth), "DAYS old. 
                                            Equivalent to:",fwbirth(input$birth),"WEEKS") }) 
        output$dwbirth <- renderText({ paste("The day of the week was:",fweekdbirth(input$birth)) }) 
        
        
        
        output$ranges <- renderText({paste("You have chosen a range that goes from",
                                           input$ranges[1], "to", input$ranges[2]) })
        
        output$calcranges <- renderText({paste("The range selected has a duration of:",
                                               frange(input$ranges[1], input$ranges[2])) })
        
        output$date <- renderText({ paste("You have entered this date:",input$date,
                                          "it is:",fweekdate(input$date)) })
        
})
