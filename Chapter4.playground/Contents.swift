// Chapter4

// 文字列
print("バッテリー残量はあと20%です。")

// 文字列補間の例
var batteryRemaining = 10
print("バッテリー残量はあと\(batteryRemaining)%です。")

// ブール値の確認
print(1 == 1)
print(1 == 2)

// 型を明示的に指定する。
// var <変数名>:<型> = <初期値>
var number:Int = 999
var dnumber:Double = 3.14
var str:String = "あいうえお"

// 練習問題4-1
var bodyTemp:Double = 36
bodyTemp = 36.5

// 配列
var todos = ["あ", "い", "う"]
print(todos[1])
// 要素の追加
todos.append("え")
// 要素の削除
todos.remove(at: 1)

for task in todos {
    print(task)
}

// 練習問題4-2
var scores = [95, 70, 80]
var sum = 0;
for score in scores {
    sum += score
}
print(sum)

// 練習問題4-3
var results = ["国語":95, "数学":70, "英語":80]
print(results["数学"])
// 既存の値を変更
results["数学"] = 100
// 新規追加
results["音楽"] = 90
print(results["音楽"])
// 要素の削除
results["音楽"] = nil

// 関数
// func 関数名 (ラベル 引数名:型, ラベル 引数名:型) -> 戻り値の型
// 戻り値を指定する場合は「->」で関数の後ろに型を指定する。
func kuku(dan x:Int, retu y:Int) -> Int {
    return x * y
}

print(kuku(dan: 2, retu: 2))

// 練習問題4-4
func areaOfSquare(height:Int, width:Int) -> Int {
    return height * width
}

print(areaOfSquare(height: 3, width: 3))
