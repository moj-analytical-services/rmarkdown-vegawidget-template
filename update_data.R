dice_roll <- sample(1:6, size=50, replace=TRUE)
person <- sample(c("Robin", "John", "David", "Jane", "Chloe", "Lily", "Sam"), size=50, replace=TRUE)
value <- runif(100,0,100)
df <- data.frame(person =person, dice_roll = dice_roll, value=value)

write.csv(df, "data/random_data.csv")
