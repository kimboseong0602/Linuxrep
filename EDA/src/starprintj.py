levelstair = int(input("원하시는 층수는 몇층입니까?"))

#1층 1개
#2층 3개
#3층 5개
#4층 7개
#2(n-1)+1 별개수 점화식
#5층이면 공백이 4 3 2 1
for i in range(1, levelstair+1):
    for tabc in range(levelstair-i):
        print("r", end="")
    starcc = 2*(i-1)+1
    print("*"*starcc, end="")
    print(" ")