import Foundation

let inputLine = readLine()!
let parts = inputLine.components(separatedBy: " ")
let a = Int(parts[0])!
let b = Int(parts[1])!
let c = Int(parts[2])!

func solution(a: Int, b: Int, c: Int) {
    let numberList = [a, b, c]
    let minNumber: Int = numberList.min()!
    print(minNumber)
}

solution(a: a, b: b, c: c)