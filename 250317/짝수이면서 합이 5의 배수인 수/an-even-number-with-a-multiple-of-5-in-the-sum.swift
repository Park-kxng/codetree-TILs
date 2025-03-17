let inputLine = readLine()!
let n = Int(inputLine)!

func isEven(_ num: Int) -> Bool {
    if num % 2 == 0 {
        return true
    } else {
        return false
    }
}

func isSumMultiplesOf5 (_ num: Int) -> Bool {
    var sum = 0
    for chr in String(num){
        if let curr = Int(String(chr)) {
            sum += curr
        }
    }

    if sum % 5 == 0 {
        return true
    } else {
        return false
    }
}

func solution(_ num: Int) {
    if isEven(num) && isSumMultiplesOf5(num) {
        print("Yes")
    } else {
        print("No")
    }
}

solution(n)