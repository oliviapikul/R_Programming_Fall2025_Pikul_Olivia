  # r-programming-assignments
Olivia Pikul
LIS 4370
Repository for R Programming Assignments

#Module 2 Assignment
    blog link: https://rprogrammingjournal.blogspot.com/2025/09/module-2-assignment.html

    function code: 
    assignment2 <- c(16, 18, 14, 22, 27, 17, 19, 17, 17, 22, 20, 22)

    myMean <- function(assignment2) {
    return(sum(assignment2) / length(assignment2))
    }
    myMean(assignment2)

#Module 3 Assignment
      blog link: https://rprogrammingjournal.blogspot.com/2025/09/assignment-3-analyzing-poll-data.html
      
      code: 
      
      Name <- c("Jeb", "Donald", "Ted", "Marco", "Carly", "Hillary", "Bernie")
      ABC_poll <- c(4, 62, 51, 21, 2, 14, 15)
      CBS_poll <- c(12, 75, 43, 19, 1, 21, 19)
      df_polls <- data.frame(Name, ABC_poll, CBS_poll)

      str(df_polls)
      head(df_polls)

      mean(df_polls$ABC_poll)
      median(df_polls$CBS_poll)
      range(df_polls[ , c("ABC_poll", "CBS_poll")])
    
      df_polls$Diff <- df_polls$CBS_poll - df_polls$ABC_poll
      head(df_polls)

      install.packages("ggplot2")
      library(ggplot2)

      ggplot(df_polls, aes(x = Name, y = Diff, fill = Diff > 0)) +
        geom_bar(stat = "identity")  +
        scale_fill_manual(values = c("TRUE" = "steelblue", "FALSE" = "firebrick"),
                          labels = c("CBS higher", "ABC higher")) +
        theme_minimal() +
        labs(title = "Difference Between CBS and ABC Polls by Candidate",
             y = "CBS - ABC",
             x = "Candidate",
             fill = "Poll Comparison")
  

