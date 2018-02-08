#Monika Tworek
#229776

#funkcja znajdujaca najmniejsze takie x
function smallest()
  x=Float64(1.0)
  while(Float64(x*Float64(1/x)) == 1 && x < Float64(2.0))
    x = nextfloat(Float64(x))
  end
  println("the smallest x: ", x)
end

#funkcja znajdujaca najwieksze takie x
function biggest()
  x=Float64(2.0)
  while(Float64(x*Float64(1/x)) == 1 && x > Float64(1.0))
    x = prevfloat(Float64(x))
  end
  println("the biggest x: ", x)
end

smallest()
biggest()
