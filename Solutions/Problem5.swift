//What is the smallest positive number that is evenly divisible by all of the numbers from 1 to 20?
// Implementation of a algorithm that find the primes set of the smallest number
import Foundation //Use the  Foundation lib for Linux
func primesList(limit: Int)-> Array<Int> {
  var primesfactors = Array(repeating:2,count:1) //Initialize the array
  for i in 3...20{
    var isPrime = true
    var j = 0
   while ( primesfactors[j] * primesfactors[j] <= i)  {
      if(i % primesfactors[j] == 0){
        isPrime = false
        break
      }
      j  = j + 1

    }
    if(isPrime){
      primesfactors.append(i)
    }

  }

 return primesfactors
}
let a = primesList(limit:20)
for primo in a{
  print("\(primo)")
}
// Now with the primes is time to build the number
// Formula N = Pi ^ a
let primes = primesList(limit:20)// Get the primes collection
var result = 1 //Answer to the problem
for prime in primes{
  let expo = Int(floorf( log(Float(20))/log(Float(prime)) ))
  result = result * Int(pow(Float(prime),Float(expo)))
}
print("The answer is: \(result)")
