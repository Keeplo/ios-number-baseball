//
//  NumberBaseball - main.swift
//  Created by yagom. 
//  Copyright © yagom academy. All rights reserved.
// 

import Foundation

// MARK: --- Step 1
func makeRandomNumbers() -> Array<Int> {
    var numbers = Array<Int>()

    while numbers.count < 3 {
        let randomNumber = Int.random(in: 1...9)

        if !numbers.contains(randomNumber) {
            numbers.append(randomNumber)
        }
    }
    return numbers
}

func compareArrays( _ computerNumbers: Array<Int>, _ userNumbers: Array<Int>) -> (Int, Int) {
    var strike: Int = 0
    var ball: Int = 0

    for index in 0..<computerNumbers.count {
        if computerNumbers[index] == userNumbers[index] {
            strike += 1
        } else if computerNumbers.contains(userNumbers[index]) {
            ball += 1
        }
    }
    return (strike, ball)
}

func startGame() {
    let computerNumbers = makeRandomNumbers()
    var tryCount: Int = 9

    while tryCount > 0 {
        print("컴퓨터 \(computerNumbers)")
        let userNumbers = verifyUserInput()
        let (strike, ball) = compareArrays(computerNumbers, userNumbers)
        print("\(strike) 스트라이크, \(ball) 볼")

        tryCount -= 1
        print("남은 기회 : \(tryCount)")

        if strike > 2 {
            print("사용자 승리!")
            break
        } else if tryCount == 0 {
           print("컴퓨터 승리...!")
        }
    }
}

// MARK: --- Step 2
func selectMenu() {
    while true {
        print("1. 게임시작")
        print("2. 게임종료")
        print("원하는 기능을 선택해주세요", terminator: " : ")
        guard let inputString = readLine() else {
            print("입력이 잘못되었습니다")
            continue
        }
        if let convertNumber = Int(inputString), convertNumber == 1 || convertNumber == 2 {
            if convertNumber == 1 {
                startGame()
            } else {
                break
            }
        } else {
            print("입력이 잘못되었습니다")
            continue
        }
    }
}

//func verifyUserInput() -> Array<Int> {
//    print("숫자 3개를 띄어쓰기로 구분하여 입력해주세요.")
//    print("중복 숫자는 허용하지 않습니다.")
//    print("입력", terminator: " : ")
//
//    guard let inputString = readLine() else {
//            print("입력이 잘못되었습니다")
//            return verifyUserInput()
//    }
//
//    let unconvertedNumbers = inputString.components(separatedBy: " ").filter({ $0 != "" })
//    var userInputNumbers = Array<Int>()
//
//    if unconvertedNumbers.count != 3 {
//        print("입력이 잘못되었습니다")
//        return verifyUserInput()
//    }
//
//    for unconvertedNumber in unconvertedNumbers {
//        if let convertNumber = Int(unconvertedNumber), unconvertedNumber.count < 2, convertNumber != 0, !userInputNumbers.contains(convertNumber) {
//            userInputNumbers.append(convertNumber)
//        } else {
//            print("입력이 잘못되었습니다")
//            return verifyUserInput()
//        }
//    }
//
//    if userInputNumbers.count == 3 {
//        return userInputNumbers
//    } else {
//        print("입력이 잘못되었습니다")
//        return verifyUserInput()
//    }
//}

func verifyUserInput() -> Array<Int> {
    while true {
        print("숫자 3개를 띄어쓰기로 구분하여 입력해주세요.")
        print("중복 숫자는 허용하지 않습니다.")
        print("입력", terminator: " : ")

        guard let userInput = readLine() else { continue }
        let convertedNumbers = userInput.components(separatedBy: " ").compactMap({ Int($0) })
        
        if Set(convertedNumbers).filter({ $0 > 0 && $0 < 10 }).count == 3 {
            return convertedNumbers
        } else {
            print("입력이 잘못되었습니다")
            continue
        }
    }
}

// MARK: --- Main
selectMenu()
