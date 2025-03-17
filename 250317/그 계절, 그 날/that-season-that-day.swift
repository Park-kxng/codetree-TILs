let inputLine = readLine()!
let inputValues = inputLine.split(separator: " ").map { Int(String($0))! }
let y = inputValues[0]
let m = inputValues[1]
let d = inputValues[2]

func isLeapYear(_ y: Int) -> Bool {
    if y % 4 == 0 {
        if y % 100 == 0 {
            if if y % 400 == 0 {
                return true
            } else {
                return false
            }
        } else {
            return true
        }
    } else {
        return true
    }
}

func solution (y: Int, m: Int, d: Int) {
    let spring = "Spring"
    let summer = "Summer"
    let fall = "Fall"
    let winter = "Winter"
    let notExist = -1

    // 윤년인지 파악 후 존재하는 날짜인지 파악
    if m == 2 {
        if !isLeapYear(y) && d == 29 {
            print(notExist)
            return   
        } 
    } else if [4,6,9,11].contains(m) && d == 31 {
        print(notExist)
        return
    }
    // 존재하는 날짜인 경우 계절 출력
    if 3 <= m && m <= 5 {
        print(spring)
    } else if 6 <= m && m <= 8 {
        print(summer)
    } else if 9 <= m && m <= 11 {
        print(fall)
    } else {
        print(winter)
    }
    
}

solution(y: y, m: m, d: d)