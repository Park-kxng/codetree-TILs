func GCD(a: Int, b: Int) -> Int {
    return b == 0 ? a : GCD(a: b, b: a % b)
}

let numbers = readLine()!.split(separator: " ").map{Int($0)!}
let a = numbers[0]
let b = numbers[1]

let gcd = GCD(a: a, b: b)
let lcm = abs(a * b) / gcd

print(lcm)