#Monika Tworek
#229776

module MyModule

export mbisekcji, mstycznych, msiecznych

#=
  @param f    funkcja
  @param a,b  końce przedzialu
  @param delta, epsilon dokladnosc obliczen
=#
function mbisekcji(f, a::Float64, b::Float64, delta::Float64, epsilon::Float64)
  if b < a
    temp = a;
    a = b;
    b = temp;
  end

  fl = f(a);
  fr = f(b);

  if sign(fl) == sign(fr)
    return 'x', 'x', 'x', 1;
  end

  half = b - a;
  half = half / 2;
  center = a + half;
  w = f(center);
  it = 1;
  while abs(w) > epsilon && abs(e) > delta
    it=  it + 1;
    if sign(w) != sign(fl)
      b = center;
      fr = w;
    else
      a = center;
      fl = w;
    end
    half = half / 2;
    center = a + half;
    w = f(center);
  end
  return center, w, it, 0;
end


#=
  @param f  funkcja
  @param pf   pochodna
  @param x0 przyblizenie poczatkowe
  @param delta, epsilon dokladnosc obliczen
  @param maxit maksymalna ilosc iteracji
=#
function mstycznych(f, pf, x0::Float64, delta::Float64, epsilon::Float64, maxit::Int)
  fx = f(x0);
  if abs(fx) < epsilon;
    return 0, x0, fx, 0
  end
  x1 = 0.0
  k = 1
  for k=1:maxit
    if abs(pf(x0)) < eps(Float64);
      return 0, x0, fx, 2
    end
    x1 = x0 - fx / pf(x0)
    fx = f(x1);
    if abs(x1 - x0) < delta || abs(fx) < epsilon
      return x1, fx, k, 0
    end
    x0 = x1;
  end
  return x1, fx, k, 1
end

#=
  @param f    funkcja
  @param x1, xo  przyblizenia poczatkowe
  @param delta, epsilon dokladnosc obliczen
  @param maxit maksymalna ilosc iteracji
=#
function msiecznych(f, x0::Float64, x1::Float64, delta::Float64, epsilon::Float64, maxit::Int)
  fx0 = f(x0)
  fx1 = f(x1)
  k = 0; s = 0.0; temp = 0
  for k = 1 : maxit
    if abs(fx0) > abs(fx1)
      temp = x1;
      x1 = x0;
      x0 = temp;
      temp = fx0;
      fx0 = fx1;
      fx1 = temp;
    end
    s = (x1 - x0) / (fx1 - fx0);
    x1 = x0;
    fx1 = fx0;
    x0 = x0 - fx0 * s;
    fx0 = f(x0);
    if abs(x1 - x0) < delta || abs(fx0) < epsilon
      return x0, fx0, k, 0;
    end
  end
  return x0, fx0, k, 1;
end
end

#push!(LOAD_PATH, "C:\\Users\\Monika\\Desktop\\semestr5\\obliczenianaukowe\\laboratorium\\lab3")
