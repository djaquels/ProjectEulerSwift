// Find the sum of the under 4 million even numbers in fibonacci sequence
// Answer: 4613732
let limit = 4_000_000
var sum = 0
func iseven(number: Int)-> Bool{
  var state = false
   if number %  2 == 0 {
     state = true
   }
   return state
}
func fibsequence(end: Int)-> Array<Int>{
  var sequence = [1,2]
  var pre = 1
  var actual = 2
  var newitem = 0
  repeat{
    newitem = pre + actual
    pre = actual
    actual = newitem
    sequence.append(newitem)
  }while(newitem < end )
  return sequence
}
for actual in fibsequence(end:limit){
 if actual % 2 == 0{
   sum = sum + actual
 }
}
print("The answer is \(sum)")
