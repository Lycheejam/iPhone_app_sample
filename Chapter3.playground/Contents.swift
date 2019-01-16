// 実習3-1
print(1 + 1)

// 実習3-2
print(1 + 1)
print(5 - 3)
print(3 * 3)
print(6 / 2)
print(7 % 3)

// 地球の体積の計算
print(4 / 3 * 3.14 * 6378 * 6378 * 6378)

// 変数xを使用した3の2乗の計算
var x = 3
print(x * x)

for x in 1...9 {
    print(3 * x)
}

var i = 10
for x in 1...i {
    print(x)
}

// 練習問題3-2
// 0から100までの合計
var sum = 0;
for x in 1...100 {
    sum += x
}
print(sum)

// 練習問題3-4
for x in 1...9 {
    for i in 1...9 {
        print(x * i)
    }
}
