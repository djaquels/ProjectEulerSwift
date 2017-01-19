// What is the 10 001st prime number?
import Foundation// for Linux use Darwin for Apple Computers
let primest = 10_001
var primescollection :[Int] = [2,3]
// Function that chek if a number is prime
enum Number{
case prime(Int)
case noprime
}
func isPrime(number:Int)->Number{
  var i = 2
  while (i * i <= number) {
  if( number % i == 0 ){
      return Number.noprime
    }
     i =  i + 1
    }
  return Number.prime(number)
}
var i = 4 // The loop starts at 4
repeat {
  let state = isPrime(number:i)
  switch state {
  case .prime(let n):
      primescollection += [n]
  default:
    break

  }
  i = i + 1

} while (primescollection.count < primest)
let answer = primescollection.removeLast()
print("The 10 001st prime number is: \(answer)")
