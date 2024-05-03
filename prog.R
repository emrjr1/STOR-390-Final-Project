library(dplyr)
set.seed(123)
n <- 1991

##Sociodemographic
age <- sample(18:80, n, replace = TRUE)
gender <- sample(c("Male", "Female"), n, replace = TRUE)
education <- sample(c("High School", "Bachelor's", "Master's", "PhD"), n, replace = TRUE)

##Some sample survey responses
undecided <- sample(c(0, 1), n, replace = TRUE, prob = c(0.17, 0.83))
voted <- sample(c(0, 1), n, replace = TRUE, prob = c(0.139, 0.861))
afd_vote <- sample(c(0, 1), n, replace = TRUE, prob = c(0.9, 0.1))
greens_vote <- sample(c(0, 1), n, replace = TRUE, prob = c(0.95, 0.05))

## Some attempt to generate digital trace data
mobile_internet_share <- runif(n, min = 0, max = 1)
num_devices <- sample(1:5, n, replace = TRUE)
device_usage_night <- sample(c(0, 1), n, replace = TRUE, prob = c(0.8, 0.2))
news_media_time <- runif(n, min = 0, max = 600) 
news_media_proportion <- runif(n, min = 0, max = 1) 
public_broadcasting_time <- runif(n, min = 0, max = 300) 
public_broadcasting_proportion <- runif(n, min = 0, max = 1) 
populist_news_time <- runif(n, min = 0, max = 150) 
populist_news_proportion <- runif(n, min = 0, max = 1) 

##Generates variables related to domains visited and apps used
num_domains_visited <- sample(10:100, n, replace = TRUE) 
num_apps_used <- sample(5:50, n, replace = TRUE) 
time_spent_per_domain <- runif(n, min = 0, max = 600, each = num_domains_visited) 
time_spent_per_app <- runif(n, min = 0, max = 600, each = num_apps_used) 

##Combines generated data into a data frame
simulated_data <- data.frame(
  Age = age,
  Gender = gender,
  Education = education,
  Undecided = undecided,
  Voted = voted,
  AfD_Vote = afd_vote,
  Greens_Vote = greens_vote,
  Mobile_Internet_Share = mobile_internet_share,
  Num_Devices = num_devices,
  Device_Usage_Night = device_usage_night,
  News_Media_Time = news_media_time,
  News_Media_Proportion = news_media_proportion,
  Public_Broadcasting_Time = public_broadcasting_time,
  Public_Broadcasting_Proportion = public_broadcasting_proportion,
  Populist_News_Time = populist_news_time,
  Populist_News_Proportion = populist_news_proportion,
  Num_Domains_Visited = num_domains_visited,
  Num_Apps_Used = num_apps_used
)
head(simulated_data)

##My major issues from here are 1) I generally just don't know what to do. And 2) I have people listed
##as having voted for multiple people when that is not possible. 3) I have simply mismanaged my time. 