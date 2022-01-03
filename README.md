# NumberBaseball
## Information
* 프로젝트 기간 : 2021.05.25. ~ 2021.05.28
* 프로젝트 인원 : 2명 Marco(@Keeplo), Ellen(@jcrescent61)
* 프로젝트 소개 
    > 9회 기회 중 3 스트라이크가 나오면 사용자가 승리, 나오지 않으면 컴퓨터가 승리하는 텍스트 게임(console app). 중복되지 않은 한 자리수 3개를 입력해서 처음 생성된 랜덤 수 3개와 비교, 순서에 같은 수 면 스트라이크, 다른 순서에 같은 수가 있으면 볼.
* Pull Requests
    * [Step 1](https://github.com/yagom-academy/ios-number-baseball/pull/36)
    * [Step 2](https://github.com/yagom-academy/ios-number-baseball/pull/43)
### Tech Stack
* Swift 5.4
* Xcode 12.5
* macOS 10.15
### Demo
<details><summary>Demo Image</summary><div markdown="1">

잘못된 입력처리

사용자 승리 시나리오

컴퓨터 승리 시나리오

게임 종료 동작

</div></details>
<br>

## Psudo Code
<details><summary>Psudo Code Text</summary><div markdown="1">

1. 프로그램 시작
2. 메뉴시작
3. <출력> : “1. 게임시작\n2.게임종료\n원하는 기능 선택해주세요 : “
4. <입력> 
5. <함수> : 입력 받은 내용이 ‘1’ 또는 ‘2’ 인가?
    1. True -> 6번으로
    2. False -> <출력> : 입력오류 -> 1번으로
6. <조건> : 입력 받은 내용이 “1” 인가?
    1. True -> 7번으로
    2. False -> 12번으로
7. 게임시작 
8. <변수 선언 및 변경> (남은기회 = 9)
9. <변수 선언 및 변경> (컴퓨터, 사용자) 
    1. 임의의 숫자 3개 생성 -> 9-2번로
    2. <출력> : 숫자3개를 띄어쓰기로 구분하여 입력해주세요.\n중복 숫자는 허용하지 않습니다.\n입력 : “
    3. <입력> 
    4. <함수> : 입력 받은 내용을 숫자 3개로 변환이 유효한가?
        1. 유효 -> 10번으로
        2. 무효 -> 9-2번으로
10. <조건> : 남은 기회가 0회 인가?
    1. True -> 11번으로
    2. False -> <함수> : 컴퓨터와 사용자의 숫자비교
        1. <출력> : “\(스트라이크 수) 스트라이크, \(볼) 볼” 
        2. <조건> : 스트라이크 > 2
            1. True -> <출력> : “사용자 승리!” -> 11번으로
            2. False -> <변수 선언 및 변경> 남은기회 -= 1 -> 9번으로
11. 게임종료 -> 메뉴시작
12. 메뉴종료 -> 프로그램시작
</div></details>
<br>

## FlowChart
<details><summary>FlowChart Image</summary><div markdown="1">

<img width="874" alt="image" src="https://user-images.githubusercontent.com/24707229/119995900-0d946600-c009-11eb-8630-ba9f4cae70d6.png">
</div></details>
<br>

## Troubleshootings
<details><summary>변수명 이름짓기 고민 - 쓰임새 이름짓기 VS 실제 동작 이름짓기</summary><div markdown="1">


협업하는 동료나 다시 코드를 보게될 미래의 코드 작성자가 이해하기 쉬운 변수명이 좋은 방향이라는 생각을 하게 되었습니다. 
[연관링크 - Use Terminology Well](https://www.swift.org/documentation/api-design-guidelines/)
</div></details>
<details><summary>재귀 호출 - StackOverflow 문제</summary><div markdown="1">

코드 들여쓰기 2회 초과 금지 기준 때문에 처음 아이디어는 재귀 함수형태로 반복형성
코드 1
PR 피드백을 통해 스택오버플로우 문제에 대한 고민을 해보게됨
피드백
피드백을 반영해서 재귀형태 반복문을 'while' 반복으로 변형
코드 2
</div></details>
<details><summary>Set Shuffle이 되는 상황 실험</summary><div markdown="1">


</div></details>
<br>