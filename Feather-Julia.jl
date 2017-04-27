using Feather
cd("C:/Users/cheng/Documents")
@time df = Feather.read("testR.feather")
@time Feather.write("testJulia.feather", df)
head(df)
