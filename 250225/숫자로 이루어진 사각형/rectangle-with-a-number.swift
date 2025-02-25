func printRectWithNums(n: Int) {
    let numbers = [1,2,3,4,5,6,7,8,9]
    var curr_index = 0
    for i in 0..<n {
        var temp = ""
        for j in 0..<n {
            let index = (numbers.count + curr_index) % numbers.count
            temp += "\(numbers[index]) "
            curr_index += 1
        } 
        print(temp)
    }
}
let n = Int(readLine()!) ?? 0
printRectWithNums(n: n)