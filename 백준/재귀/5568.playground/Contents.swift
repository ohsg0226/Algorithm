import Foundation

let n = Int(readLine()!)!
let k = Int(readLine()!)!

var input = [String]()
var answerSet = Set<String>()
var visited = Array(repeating: false, count: n)
for _ in 0..<n {
  input.append(readLine()!)
}

func recursive(_ tempString: String, _ depth: Int, _ index: Int) {
  if depth == k {
    answerSet.insert(tempString)
    return
  }
  
  if index > n { return }
  
  for i in 0..<n {
    if !visited[i] {
      visited[i] = true
      recursive(tempString + input[i], depth+1, i)
      visited[i] = false
    }
  }
}
recursive("", 0, 0)

print(answerSet.count)
