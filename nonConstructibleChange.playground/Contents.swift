class Program {
  func nonConstructibleChange(_ coins: inout [Int]) -> Int {
    //order the array
    var coinsSorted = coins.sorted()
    var sum = 0
      
    print(coinsSorted)
      //get the sum of the array else the last one
      if coins.count == 1 && coins[0] > 1 || coins.isEmpty{
        return 1
      }else{
          for coin in coinsSorted{
              //know if the sum cant be created of a single point
              
              sum += coin
          }
          if coinsSorted.last != nil{
          sum -= coinsSorted.last ?? 1
          sum += 1
          }
      }
    return sum
  }
}


let program = Program()
var coins = [5,7,1,1,2,3,22]
var coins1 = [1,1,1,1,1]
var coins2 : [Int]
coins2 = []
print(program.nonConstructibleChange(&coins2))



      
