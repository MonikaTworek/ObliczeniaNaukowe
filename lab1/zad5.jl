#Monika Tworek
#229776
#podane wektory
x = [2.718281828,-3.141592654, 1.414213562, 0.5772156649, 0.3010299957]
y = [1486.2497, 878366.9879, -22.37492, 4773714.647, 0.000185049]

#suma liczona w typie Float32
function suma32()
  println("Suma 32:")
  sum = Float32(0.0)
  #suma liczona po kolei
  for i = 1 : length(x)
      sum += x[i] * y[i]
  end
  println("a) suma = ", sum)

  #suma liczona odwrotnie
  sum = Float32(0.0)
  for i in 0:4
    sum = Float32(sum + Float32(x[5-i])*Float32(y[5-i]))
  end
  println("b) suma = ", sum)

  #vector, który sortuje liczby rosnąco
  vector = [0.0,0.0,0.0,0.0,0.0]
  for i in 0:4
    vector[i+1] = Float32(x[5-i])*Float32(y[5-i])
  end
  vector = sort(vector)

  #suma liczona w posortowanych rosnaco liczbach
  sum = Float32(0.0)
  for i in 0:4
    sum = Float32(sum + vector[5-i])
  end
  println("c) suma = ",  sum)

  #suma liczona w posortowanych malejaco liczbach
  sum = Float32(0.0)
  for i in 1:5
    sum = Float32(sum+vector[i])
  end
  println("d) suma = ", sum)
end

#analogiczna funkcja dla Float64
function suma64()
  println("Suma 64:")
  sum = Float64(0.0)
  for i = 1 : length(x)
      sum += x[i] * y[i]
  end
  println("a) suma = ", sum)


  sum = Float64(0.0)
  for i in 0:4
    sum = Float64(sum + Float64(x[5-i])*Float64(y[5-i]))
  end
  println("b) suma = ", sum)


  vector = [0.0,0.0,0.0,0.0,0.0]
  for i in 0:4
    vector[i+1] = Float64(x[5-i])*Float64(y[5-i])
  end
  vector = sort(vector)

  sum = Float64(0.0)
  for i in 0:4
    sum = Float64(sum + vector[5-i])
  end
  println("c) suma = ",  sum)

  sum = Float64(0.0)
  for i in 1:5
    sum = Float64(sum+vector[i])
  end
  println("d) suma = ", sum)
end

#wywolanie funkcji
suma32()
suma64()
