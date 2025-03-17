if let inputLine = readLine() {
    let parts = inputLine.split(separator: " ").map{ Int($0)! }
    print(min(parts[0], parts[1], parts[2]))
}