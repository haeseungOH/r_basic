# 친밀도, 적절성, 만족도 변수로 상관분석
result <- read.csv("testdata/drinking_water.csv",fileEncoding = "UTF-8")
head(result)
summary(result)

# 공분산
cov(result$친밀도,result$적절성)   
cov(result)

# 상관계수
?cor
cor(result$친밀도,result$적절성, method = "pearson")
cor(result)

cor(result$친밀도 + result$적절성, result$만족도)

# 시각화
symnum(cor(result))

install.packages("corrgram")               # 제일 많이 쓰인다.
library(corrgram)
corrgram(result)   # 색깔이 흐릴수록 높다.
corrgram(result, upper.panel = panel.conf) # 숫자도 같이 보여준다.
corrgram(result, lower.panel = panel.conf)

install.packages("PerformanceAnalytics")
library(PerformanceAnalytics)

chart.Correlation(result, histogram = , pch ='+')
#-------------------------------------------------------------------------
cor(result,method = 'spearman')    # 서열 척도
cor(result,method = 'kendall')     # 서열 척도
