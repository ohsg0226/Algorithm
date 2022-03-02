import Foundation

var answer = 0
var targetNumber = 0
var numberArray = [Int]()

func solution(_ numbers:[Int], _ target:Int) -> Int {
    targetNumber = target
    numberArray = numbers
    
    dfs(0, 0)
    
    return answer
}

func dfs(_ depth: Int, _ sum: Int) {
    if depth == numberArray.count {
        if sum == targetNumber {
            answer += 1
        }
        return
    }
    dfs(depth + 1 , sum + numberArray[depth])
    dfs(depth + 1 , sum - numberArray[depth])
}
