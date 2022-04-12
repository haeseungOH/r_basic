x <- c(1,2,3,4,5)        # 상품 판매용 DM 발송횟수
y <- c(3,5,8,11,15)      # 제품 판매 수
mean(x)
mean(y)

cov(x,y)                 # 공분산 구하기
cor(x,y)                 # 상관계수 구하기

cov(1:5, 2:6)            # 공분산 2.5
plot(1:5, 2:6)

cov(1:5, c(3,3,3,3,3))   # 공분산 0 , 관계가 X 만들 필요가 없다.
plot(1:5,  c(3,3,3,3,3))

cov(1:5, 5:1)            # -2.5
plot(1:5, 5:1)

cov(1:5, c(50,40,30,20,10))          # -25
plot(1:5, c(50,40,30,20,10))

cov(1:5, c(500,400,300,200,100))     # -250
plot(1:5, c(500,400,300,200,100))

cor(1:5, 5:1)                    # 상관계수 -1
cor(1:5, c(50,40,30,20,10))      # 상관계수 -1
cor(1:5, c(500,400,300,200,100)) # 상관계수 -1

cov(1:5, c(55,43,40,15,10))      # 공분산 -29.5
cor(1:5, c(55,43,40,15,10))      # 상관계수 -0.9682545
plot(1:5, c(55,43,40,15,10))

# 아버지와 아들의 키의 상관분석 
hf <- read.csv("testdata/galton.csv")
head(hf,3)
dim(hf)
str(hf)
summary(hf)

hf_man <- subset(hf, sex=='M')
head(hf_man)

hf_man <- hf_man[c("father","height")]      # "father","height" 만 추출
head(hf_man)

# 두 개의 변수 간의 관계분석
# 공분산 수식 사용
f_mean <- mean(hf_man$father)
s_mean <- mean(hf_man$height)
cat(f_mean,s_mean)
cov_sum <- sum((hf_man$father - f_mean) * (hf_man$height - s_mean))
cov_xy <- cov_sum / (nrow(hf_man) -1)
cov_xy  # 공분산 2.368441

# 공분산 함수 사용
cov(hf_man$father,hf_man$height) # 공분산 2.368441

# 상관계수 수식 사용 : 공분산 / 두 변수의 표준편차 곱 
r_xy <- cov_xy / (sd(hf_man$father)*sd(hf_man$height))
r_xy
# 상관계수 함수 사용
cor(hf_man$father,hf_man$height)

cor.test(hf_man$father,hf_man$height, method = 'pearson')
