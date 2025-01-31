 data <- read.csv("dataset_Facebook.csv", sep = ";")
 library(dplyr)
 dataset <- data %>% select(Lifetime.Post.Total.Impressions,Type,Page.total.likes,
                            Type,Post.Weekday,
                            Paid,
                            comment,like,share)
 str(dataset)
 dataset$Type <- as.factor(dataset$Type)
 dataset$Post.Weekday <- as.factor(dataset$Post.Weekday)
 dataset$Lifetime.Post.Total.Impressions <- log(dataset$Lifetime.Post.Total.Impressions)
 dataset$Page.total.likes <- log(dataset$Page.total.likes)
 
 model <- lm(Lifetime.Post.Total.Impressions ~., data = dataset)
 summary(model)
 
 