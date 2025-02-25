// GCD(a, b) = GCD(b, a mod d)


func GCD(a: Int, b: Int) -> Int{
    // 탈출 조건
    if b == 0 {
        return  a
    }

    return GCD(a: b, b: a % b)
}

let numbers = readLine()!.split(separator: " ").map{ Int($0)! }
let a = numbers[0]
let b = numbers[1]

let answer = GCD(a: a, b: b)
print(answer)


