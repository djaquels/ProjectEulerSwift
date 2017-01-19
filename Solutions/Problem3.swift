// Find the largest prime factor of the number 600851475143
let number = 600851475143
// Answer : 6857
// Solution based on C# implementation at http://www.mathblog.dk/project-euler-problem-3/
func largest(n: Int)->Int{
  var numact = n
  var largestf = 0
  var counter = 2
  while (counter * counter <= numact) {
     if(numact % counter == 0){
       numact = numact / counter
       largestf = counter
     }
     else{
       counter = counter + 1
     }
  }
  if( numact > largestf){
    largestf = numact
  }
  return numact
}
let primefactor = largest(n:number)
print("The solution is: \(primefactor)")
