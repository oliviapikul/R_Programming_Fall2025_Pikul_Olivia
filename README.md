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
  

###Module 4 Assignment 
    blog link: https://rprogrammingjournal.blogspot.com/2025/09/assignment-4-analyzing-hospital-data.html

      code: 
      library(readxl)
mydata <- read_excel("Module # 4 assessment_data.xlsx")
View(mydata)

Frequency <- c(0.6, 0.3, 0.4, 0.4, 0.2, 0.6, 0.3, 0.4, 0.9, 0.2) 
BloodPressure <- c(103, 87, 32, 42, 59, 109, 78, 205, 135, 176)
FirstAssess  <- c(1, 1, 1, 1, 0, 0, 0, 0, NA, 1)   
SecondAssess <- c(0, 0, 1, 1, 0, 0, 1, 1, 1, 1)   
FinalDecision <- c(0, 1, 0, 1, 0, 1, 0, 1, 1, 1) 

df_hosp <- data.frame(
  Frequency, 
  BloodPressure,
  FirstAssess,
  SecondAssess,
  FinalDecision,
  stringAsFactors = FALSE
)

summary(df_hosp)
df_hosp <- na.omit(df_hosp)
summary(df_hosp)


par(mfrow = c(1,3))
boxplot(
  BloodPressure ~ FirstAssess, data = df_hosp, names = c("Good", "Bad"), 
  ylab = "Blood Pressure", main = "BP by First MD Assessment"
)

boxplot( BloodPressure ~ SecondAssess, data = df_hosp, names = c("Low", "High"), ylab = "Blood Pressure", main = "BP by Second MD Assessment")

boxplot(BloodPressure ~ FinalDecision, data = df_hosp, names = c("Low", "High"), ylab = "Blood Pressure", main = "BP by Final Decision")

par(mfrow = c(1,2))
hist(
  df_hosp$Frequency,
  breaks = seq(0,1, by = 0.1), 
  xlab = "Visit Frequency",
  main = "Histogram of Visit Frequency"
)

hist(df_hosp$BloodPressure, 
     breaks = 8,
     xlab = "Blood Pressure", 
     main = "Histogram of Blood Pressure")

library(readxl)
mydata <- read_excel("Module # 4 assessment_data.xlsx")
View(mydata)

Frequency <- c(0.6, 0.3, 0.4, 0.4, 0.2, 0.6, 0.3, 0.4, 0.9, 0.2) 
BloodPressure <- c(103, 87, 32, 42, 59, 109, 78, 205, 135, 176)
FirstAssess  <- c(1, 1, 1, 1, 0, 0, 0, 0, NA, 1)   
SecondAssess <- c(0, 0, 1, 1, 0, 0, 1, 1, 1, 1)   
FinalDecision <- c(0, 1, 0, 1, 0, 1, 0, 1, 1, 1) 

df_hosp <- data.frame(
  Frequency, 
  BloodPressure,
  FirstAssess,
  SecondAssess,
  FinalDecision,
  stringAsFactors = FALSE
)

summary(df_hosp)
df_hosp <- na.omit(df_hosp)
summary(df_hosp)


par(mfrow = c(1,3))
boxplot(
  BloodPressure ~ FirstAssess, data = df_hosp, names = c("Good", "Bad"), 
  ylab = "Blood Pressure", main = "BP by First MD Assessment"
)

boxplot( BloodPressure ~ SecondAssess, data = df_hosp, names = c("Low", "High"), ylab = "Blood Pressure", main = "BP by Second MD Assessment")

boxplot(BloodPressure ~ FinalDecision, data = df_hosp, names = c("Low", "High"), ylab = "Blood Pressure", main = "BP by Final Decision")

par(mfrow = c(1,2))
hist(
  df_hosp$Frequency,
  breaks = seq(0,1, by = 0.1), 
  xlab = "Visit Frequency",
  main = "Histogram of Visit Frequency"
)

hist(df_hosp$BloodPressure, 
     breaks = 8,
     xlab = "Blood Pressure", 
     main = "Histogram of Blood Pressure")
<img width="1070" height="647" alt="Screenshot 2025-09-18 121302" src="https://github.com/user-attachments/assets/45f77b84-a80c-4ea1-8e6e-07f9fec93c72" />

<img width="1182" height="647" alt="Screenshot 2025-09-18 120127" src="https://github.com/user-attachments/assets/78c562bb-6d45-4348-89e7-5dc0b174a9d2" />


#Assignment 5

A <- matrix(1:100,  nrow = 10)
B <- matrix(1:1000, nrow = 10)

dim(A)
dim(B)

invA <- solve(A)
detA <- det(A)

invB <- tryCatch(solve(B), error = function(e) e)
detB <- tryCatch(det(B),   error = function(e) e)

blog link : https://rprogrammingjournal.blogspot.com/2025/09/assignment-5-matrix-algebra-in-r.html

