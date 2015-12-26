library(ggplot2)

source("backend.R")

function(input, output) {
  
  output$plot <- renderPlot({
  
    # plot the members only trip data
    if (input$Member_Type)
    {
      onroadMD <- subset(dataset, Member_type == 'Registered')
    
        plot1 <-  ggplot(data=onroadMD, aes(x=Start_station)) +
          geom_bar(stat="count", fill="blue") +
          ggtitle('Trip History') +
          xlab("Start station") + ylab("Total trips")+
          geom_text(stat="count",aes(label=..count..),vjust=-1)+
          theme(axis.text.x=element_text(angle=90,hjust=1,vjust=0.5))
    }
    else  #plot all trips data
    {
        plot1 <-  ggplot(data=dataset, aes(x=Start_station)) +
          geom_bar(stat="count", fill="green") +
          ggtitle('Trip History') +
          xlab("Start station") + ylab("Total trips")+
          geom_text(stat="count",aes(label=..count..),vjust=-1)+
          theme(axis.text.x=element_text(angle=90,hjust=1,vjust=0.5))
    }
    
    print(plot1)
    
  }, height=600)
}