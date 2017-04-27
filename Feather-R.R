library("feather")
df <- data.frame(x1=sample(c(runif(100),NA),1e8,replace=T),
                    x2=sample(c("数据","分析",NA),1e8,replace=T),
                    x3=sample(c("R","Python","Julia"),1e8,replace=T))
system.time(write_feather(df, 'testR.feather'))
rm(df)
system.time(df <- read_feather('testR.feather'))
head(df)
