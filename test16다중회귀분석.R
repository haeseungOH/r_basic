# 다중선형회귀분석(Multiple Linear Regression) : 독립변수가 복수
state.x77  # 미국 각 주 관련 정보 dataset 
str(state.x77)
class (state.x77)
colnames(state.x77)

# Murder(살인사건발생률)과 관련이 있는 변수만 추출해서 data.frame 작성 
states <- as.data.frame(state.x77[, c('Murder','Population','Illiteracy','Income','Frost')])
head(states,3)
dim(states)      # 50  5
cor(states)
# 독립변수 : 'Population','Illiteracy','Income','Frost'  = data
# 종속변수 : 'Murder'                                    = 답 

# model 작성
mfit <- lm(formula = Murder ~ Population+Illiteracy+Income+Frost, data = states)
summary(mfit)   # p-value: 9.133e-08 < 0.05이므로 유의한 모델. Adjusted R-squared: 0.5285 의 설명력을 갖는다.

par(mfrow = c(2,2))
plot(mfit)
