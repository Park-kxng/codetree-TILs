func print10Stars() {
    print(String(repeating: "*", count: 10))
}

for _ in 0..<5 {
    print10Stars()
}