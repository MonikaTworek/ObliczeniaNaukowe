#Monika Tworek
#229776

#ile jest liczb z przedzialu [1,2]
#wykorzystanie wzoru i nextFloat
function firstpart()
  println("1: ", bits(Float64(1.0)))
  println("1+2^(-52): ", bits(Float64(1+2.0^(-52))))
end

#ile jest liczb z przedzialu [0.5, 1]
#wykorzystanie wzoru i nextFloat
function secondpart()
  println("0.5: ", bits(Float64(0.5)))
  println("0.5+2^(-53): ", bits(Float64(0.5+2.0^(-53))))
end

#ile jest liczb z przedzialu [2,4]
#wykorzystanie wzoru i nextFloat
function thirdpart()
  println("2: ", bits(Float64(2.0)))
  println("2+2^(-51): ", bits(Float64(2+2.0^(-51))))
end

#wywolanie funkcji
firstpart()
secondpart()
thirdpart()
