//Find the 3 or 5 multiplies below 1000
//Answer: 233168
let limit : Int = 1000
// Imperative style solution
func solution(end : Int)-> Int{
  var result = 0
  for actual in 3..<end{
    if (actual % 3 == 0 || actual % 5 == 0){
     result = result  + actual
    }
  }
  return result
}
let result = solution(end: limit)
print(result)
