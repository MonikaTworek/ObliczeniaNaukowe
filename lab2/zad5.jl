#Monika Tworek
#229776

#MAIN
n = 40;
A=zeros(Float32, n+1)
B=zeros(Float32, n+1)
C=zeros(Float64, n+1)
r = 3

p32 = Float32(0.01)
A[1] = p32;
for i=1:n
  println(p32)
  p32 = p32 + r * p32 * (Float32(1.0) - p32)
  A[i+1] = p32;
end
println(p32)
println()

p32 = Float32(0.01)
for i=1:4
  for j=1:10
    println(p32)
    B[10*(i-1) + j] = p32
    p32 = p32 + r * p32 * (Float32(1.0) - p32)
  end
  p32 = floor(p32,3)
end
B[n+1] = p32;
println(p32)
println()

p64 = 0.01
C[1] = p64
for i=1:n
  println(p64)
  p64 = p64 + r * p64 * (1.0 - p64)
  C[i+1] = p64
end
println(p64)
