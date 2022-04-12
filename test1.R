va <- 1
va <- 2
va = 3
4 -> va
cat('결과는',va)
print(va)
a <- 2
b <- 3

# 데이터 유형
kbs <- 9                    # scalar는 지원X ,기본이 vector 이다.
object.size(kbs)
typeof(kbs)
typeof(3)
typeof(3.14)
is(kbs)                    # 데이터 유형 출력
mbc <- as.integer(kbs)     # 형 변환 integer를 쓰면 속도가 빨라진다.
is(kbs)
typeof(kbs)
mbc <- 9L
is(mbc)
# R 에는 scalor 가 없다. 기본 vector 부터 있다.
ss <- '홍길동'
typeof(ss)
is(ss)
ss[0]
ss[1]                     #index 1부터 출발한다.
is(ss)
ss[0]
b <- TRUE
is(b)
b  <-  T                  #오버라이딩 한것 
# vector가 기본 값: charcter, logical, numeric(integer)

typeof(NA)
aa <- NA                  #결측데이터(값이 입력되지 않은 상태)
aa
is(aa)

sum(2,3)
sum(2,3, NA)   #전체가 결측데이터가 된다.
sum(2,3, NA, na.rm=T) #na.rm=T 는 na는 지우고 실행하라는 명령어

typeof(NULL)   #데이터값이 없음. 값으로 인식X
sum(2,3, NULL)
typeof(NaN)    #수학적으로 정의되지 않은 값
sum(2,3, NaN)

typeof(Inf)    #무한대
0 / 0
0 * Inf
Inf - Inf

length(NA)
length(NaN)
length(NULL)

z <- 5.3 - 3i
z
is(z)

f <- function(){     #함수 이름쪽에서 실행
  return('good')
}
f()
is(f)
typeof(f)

#x <- 123
#x <- "123"
x <- FALSE
cat(mode(x), class(x), typeof(x))
ls()      # 현재 사용중인 객체 목록
ls.str()  #자세히 확인
rm(aa)    #변수가 참조하고있는 객체 삭제(변수삭제)
rm(list=ls()) #사용중인 모든 변수삭제
gc()      
#ctrl + l = console 창에 cursor 두고 실행하면 화면 clear

#-----------------------------------------------------
# package : 데이터 + 함수 + 알고리즘 꾸러미
available.packages()      # 사용가능한 package
dim(available.packages()) # package 갯수 확인

install.packages("plyr")  # package 설치하는 방법
library(plyr)             # package 로딩하는 방법
ls("package:plyr")        # package list 확인하는 방법
data(package="plyr")
baseball

remove.packages("plyr")   # package 삭제하는 방법

#기본 dataset : 연습용 dataset이 제공
data()

head(Nile)        # 앞 
tail(Nile, 3)     # 뒤

hist(Nile,freq = F)        # 그래프를 보여준다.
lines(density(Nile))

help("hist")               # 도움말 사용
? hist
? mean
x <- c(0:10, 50)
xm <- mean(x)
c(xm, mean(x, trim = 0.10))

getwd()      #working dir 확인

head(iris,3)
