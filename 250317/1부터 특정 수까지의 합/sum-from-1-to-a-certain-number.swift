let n = Int(readLine()!)!

func solution(_ number: Int) {
    var sum: Int = 0

    for i in 1...n {
        sum += i
    }

    print(Int(sum / 10))
}

solution(n)
