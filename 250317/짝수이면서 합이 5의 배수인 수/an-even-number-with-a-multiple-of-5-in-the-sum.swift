if let inputLine = readLine(), let n = Int(inputLine) {
    let isEven = (n % 2 == 0)
    let digitSum = String(n).reduce(0) { $0 + Int(String($1))! }
    let isSumMultipleOf5 = (digitSum % 5 == 0)

    print(isEven && isSumMultipleOf5 ? "Yes" : "No")
}