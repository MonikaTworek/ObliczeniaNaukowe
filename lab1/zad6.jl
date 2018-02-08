#Monika Tworek
#229776

#funkcja f podana w zadaniu
function f(x)
  return sqrt(x * x + 1) - 1
end

#funkcja g podana w zadaniu
function g(x)
  return x * x / (sqrt(x * x + 1) + 1)
end

#funkcja porownujaca wyniki
function main()
  k = 1/8
  for i in 1:5
    println("f(x): ", f(k))
    println("g(x): ", g(k))
    k = k*1/8
  end
end

main()
