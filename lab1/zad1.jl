#Monika Tworek
#229776
#funkcja znajdujaca macheps dla kazdego typu
function macheps()
  x = Float16(1.0)
  xhelp = Float16(1.0)
  y = Float32(1.0)
  yhelp = Float32(1.0)
  z = Float64(1.0)
  zhelp = Float64(1.0)

  while(Float16(1.0 + x) > Float16(1.0))
    xhelp = x
    x = Float16(x/2)
  end

  while(Float32(1.0 + y) > Float32(1.0))
    yhelp= y
    y = Float32(y/2)
  end

  while(Float64(1.0 + z) > Float64(1.0))
    zhelp = z
    z = Float64(z/2)
  end
  println("macheps float16: ", xhelp)
  println("eps(float16): ", eps(Float16))
  println("macheps float32: ", yhelp)
  println("eps(float32): ", eps(Float32))
  println("macheps float64: ", zhelp)
  println("eps(float64): ", eps(Float64))
end

#funkcja znajdujaca eta dla kazdego typu
function etaa()
  x = Float16(1.0)
  xhelp = Float16(1.0)
  y = Float32(1.0)
  yhelp = Float32(1.0)
  z = Float64(1.0)
  zhelp = Float64(1.0)


  while(x > Float16(0.0))
    xhelp = x
    x = Float16(x/2.0)
  end

  while(y > Float32(0.0))
    yhelp = y
    y = Float32(y/2.0)
  end

  while(z > Float64(0.0))
    zhelp = z
    z = Float64(z/2.0)
  end
  println("eta float16: ", xhelp)
  println("nextFloat: ", nextfloat(Float16(0.0)))
  println("eta float32: ", yhelp)
  println("nextFloat: ", nextfloat(Float32(0.0)))
  println("eta float64: ", zhelp)
  println("nextFloat: ", nextfloat(Float64(0.0)))
end

#funkcja znajdujaca max dla kazdego typu
function maax()
  x = Float16(1.0)
  xhelp = Float16(1.0)
  xmacheps = Float16(1.0)
  x1 = Float16(1.0)
  y = Float32(1.0)
  y1 = Float32(1.0)
  yhelp = Float32(1.0)
  ymacheps = Float32(1.0)
  z = Float64(1.0)
  zhelp = Float64(1.0)
  zmacheps = Float64(1.0)
  z1 = Float64(1.0)

  while (Float16(1.0 + xhelp) > Float16(1.0))
    xmacheps = xhelp
    xhelp = Float16(xhelp/2.0)
  end

  while !isinf(Float16(x*2.0))
      x = Float16(x*2.0)
  end
  x = Float16(x*Float16(2.0 - xmacheps))

  while (Float32(1.0 + yhelp) > Float32(1.0))
    ymacheps = yhelp
    yhelp = Float32(yhelp/2.0)
  end

  while !isinf(y*Float32(2.0))
      y = Float32(y*2.0)
  end
  y = Float32(y * (2.0 - ymacheps))

  while (Float64(1.0 + zhelp) > Float64(1.0))
    zmacheps = zhelp
    zhelp = Float64(zhelp/2.0)
  end

  while !isinf(z*Float64(2.0))
      z = Float64(z*2.0)
  end
  z = Float64(z*(2.0 - zmacheps))

  println("MAX float16: ", x)
  println("realmax(float16): ", realmax(Float16))
  println("MAX float32: ", y)
  println("realmax(float132): ", realmax(Float32))
  println("MAX float64: ", z)
  println("realmax(float64): ", realmax(Float64))
end


#wywolanie funkcji
macheps()
etaa()
maax()
