let nums = readLine()!.split(separator: " ").map{ Int($0)! } 
let n = nums[0]
let m = nums[1]

func printNTimesMstars(n: Int, m: Int) {
    for _ in 0..<n {
        print(String(repeating: "1", count: m))
    }
}

printNTimesMstars(n: n, m: m)