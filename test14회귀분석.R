# cars dataset으로 단순선형회귀 분석
head(cars,3)
dim(cars)       # 50 2 자동차의 속도와 제동거리. 속도로 인한 제동거리 예측 모델 작성 (연속형)

cor(cars$speed,cars$dist)     # 0.8068949
plot(cars$speed,cars$dist, col="red",pch=20)

m <- lm(formula = dist ~ speed, data = cars)
names(m)
coef(m)      # 절편과 기울기만 보기 , 회귀계수값 확인,  -17.579095    3.932409

summary(m)   # p-value: 1.49e-12 < 0.05 유의한 모델. R-squared:  0.6511
summary(m)$r.squared    # r.squared 값만 확인 
anova(m)
confint(m)

