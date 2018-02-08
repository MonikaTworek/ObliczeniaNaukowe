#Monika Tworek
#229776
#zad7

#funkcja podana w zadaniu
function f(x)
  return sin(x) + cos(3*(x))
end

#funkcja dokladnie liczaca wartosc
function realf(x)
  return cos(x) - 3 * sin(3 * x)
end

#funkcja liczaca pochodna
function df(x, h)
  return (f(x+h)-f(x))/h
end

#funkcja liczaca blad wynikow
function errorr(realf, badf)
  if (realf - badf) > 0
    return realf - badf
  else
    return badf - realf
  end
end

#glowna funkcja w petli liczy pochodna i roznice
function main()
  h = 1
  for i in 1:54
    println("h ^: ", i)
    println("f'(1): ", df(1, h))
    println("error: ", errorr(realf(1), df(1,h)))
    h = h/2
  end
end

main()
