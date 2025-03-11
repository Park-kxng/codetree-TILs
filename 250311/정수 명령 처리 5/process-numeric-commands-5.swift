import Foundation

let n = Int(readLine()!)!
var commands = [(command: String, number: Int?)]()

for _ in 0..<n {
    let tokens = readLine()!.split(separator: " ").map { String($0) }
    let command = tokens[0]
    if tokens.count > 1, let number = Int(tokens[1]) {
        commands.append((command: command, number: number))
    } else {
        commands.append((command: command, number: nil))
    }
}
var temp = [Int]()

for com in commands {
    let command = com.command
    if command == "push_back", let num = com.number{
        temp.append(num)
    } else if command == "pop_back" && !temp.isEmpty {
        temp.remove(at: temp.count-1)
    } else if command == "size" {
        print(temp.count)
    } else if command == "get", let num = com.number {
        if 0 <= num && num <= temp.count {
            print(temp[num-1])
        }
    }
}