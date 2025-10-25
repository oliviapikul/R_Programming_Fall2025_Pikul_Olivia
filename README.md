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

##Assignment 6

A <- matrix(c(2, 0, 1, 3), ncol = 2)
B <- matrix(c(5, 2, 4, -1), ncol = 2)

A + B
A - B

D <- diag(c(4, 1, 2, 3))
D

custom <- diag(3,5)
custom_matrix <- custom

custom_matrix[1, ] <- c(3,1,1,1,1)
custom_matrix[2:5, 1] <- 2
custom_matrix

blog link: https://rprogrammingjournal.blogspot.com/2025/10/assignment-6-matrix-operations.html



#Assignment 7

code:
data("mtcars")
head(mtcars)
str(mtcars)

summary(mtcars)
plot(mtcars)
print(mtcars)

s3_obj <- list(
  data = head(mtcars, 5),   # first 5 rows
  description = "Subset of mtcars dataset"
)
s3_obj <- list(
  data = head(mtcars, 5),   # first 5 rows
  description = "Subset of mtcars dataset"
)
class(s3_obj) <- "mtcars_s3"

print.mtcars_s3 <- function(x) {
  cat("S3 Object: mtcars_s3\n")
  cat(x$description, "\n")
  cat("Number of rows:", nrow(x$data), "\n\n")
  print(x$data)
}
print(s3_obj)

setClass("mtcars_s4",
         slots = c(
           data = "data.frame",
           description = "character"
         ))
s4_obj <- new("mtcars_s4",
              data = head(mtcars, 5),
              description = "Subset of mtcars dataset")
setGeneric("show_mtcars", function(object) standardGeneric("show_mtcars"))
setMethod("show_mtcars", "mtcars_s4", function(object) {
  cat("S4 Object: mtcars_s4\n")
  cat(object@description, "\n")
  cat("Number of rows:", nrow(object@data), "\n\n")
  print(object@data)
})
show_mtcars(s4_obj)

blog link:https://rprogrammingjournal.blogspot.com/2025/10/assignment-7-rs-object-oriented-systems.html


#assignment 8


student6 <- read.delim("Assignment 6 Dataset.txt", header = TRUE, sep = ",")

library(plyr)

gender_mean <- ddply(
  student6, 
  "Sex", 
  summarize, 
  GradeAverage = mean(Grade, na.rm = TRUE)
)

write.table(
  gender_mean, 
  file = "gender_mean.txt", 
  sep = "\t", 
  row.names = FALSE
)

i_students <- subset(
  student6,
  grepl("i", Name, ignore.case = TRUE)
)

write.csv(
  i_students$Name,
  file = "i_students.csv",
  row.names = FALSE,
  quote = FALSE
)

write.csv(
  i_students, 
  file = "i_students_full.csv",
  row.names = FALSE
)

blog link: https://rprogrammingjournal.blogspot.com/2025/10/assignment-8-plyr-package.html


#Assignment 9
code:

data(airquality)
head(airquality)
aq <- na.omit(airquality)

plot(aq$Temp, aq$Ozone, main = "Ozone vs. Temperature", xlab = "Temperature (F)", ylab = "Ozone (ppb)", col = "steelblue", pch = 19)

boxplot(Ozone ~ Month, data = aq, main = "Ozone levels by Month (May to September)", xlab = "Month", ylab = "Ozone (ppb)", col = c("royalblue", "yellowgreen","orange", "tomato", "blueviolet"))

library(lattice)

histogram( ~Ozone |factor(Month), data = aq, layout = c(3,2), main = "Distribution of Ozone Levels by Month", xlab = "Ozone (ppb)", col = "salmon", type = "count")

library(tidyr)
library(dplyr)
library(ggplot2)
airquality_long <- aq %>%
  pivot_longer(
    cols = c(Ozone, Wind, Solar.R),
    names_to = "Variable",
    values_to = "Value"
  )

ggplot(airquality_long, aes(x = Temp, y = Value, color = Variable)) +
  geom_point(alpha = 0.6) +
  geom_smooth(method = "lm", se = FALSE) +
  facet_grid(Variable ~ Month, scales = "free_y") +
  labs(title = "Air Quality Variables vs Temperature by Month", x = "Temperature (F)", y = "Value") +
  theme_bw() +
  theme(legend.position = "none")

blog link: https://rprogrammingjournal.blogspot.com/2025/10/assignment-9-visualization-in-r.html
