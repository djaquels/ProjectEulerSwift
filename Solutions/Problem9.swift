/*
There exists exactly one Pythagorean triplet for which a + b + c = 1000.
Find the product abc.
*/
// a^2 + b^2 = c^2
// a+b+c = 1000
// and a < b < c
var a = 1
var b = 2
var c = 3
for i in a...997 {
  b = i + 1
  for j in b...998{
    c = j + 1
    repeat {
        if(c + i + j == 1000 ){
          if((c * c) == (i * i) + (j * j)){
            print(" \(i) \(j) \(c) ")
            print("\(i * j * c)")
            break
          }
        }
        c = c + 1
    } while (c + b + a <= 1000)
  }
}
