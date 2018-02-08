#Monika Tworek
#229776

using Polynomials;
using PyPlot;

pol1=[1, -210.0, 20615.0, -1256850.0, 53327946.0, -1672280820.0, 40171771630.0, -756111184500.0,
      11310276995381.0, -135585182899530.0, 1307535010540395.0, -10142299865511450.0,
      63030812099294896.0, -311333643161390640.0, 1206647803780373360.0, -3599979517947607200.0,
      8037811822645051776.0, -12870931245150988800.0, 13803759753640704000.0, -8752948036761600000.0,
      2432902008176640000.0]

pol2=[1.0,2.0,3.0,4.0,5.0,6.0,7.0,8.0,9.0,10.0,11.0,12.0,13.0,14.0,15.0,16.0,17.0,18.0,19.0,20.0];

pol3=[1.0, -210.0 - (1.0/(2.0^23)), 20615.0,-1256850.0, 53327946.0, -1672280820.0, 40171771630.0, -756111184500.0,
      11310276995381.0, -135585182899530.0, 1307535010540395.0, -10142299865511450.0, 63030812099294896.0,
      -311333643161390640.0, 1206647803780373360.0, -3599979517947607200.0, 8037811822645051776.0, -12870931245150988800.0,
      13803759753640704000.0, -8752948036761600000.0, 2432902008176640000.0]

#tworzenie wielomianu P(x)
P = Poly(flipdim(pol1, 1));#P(x) = X^20 -210X^19 + ...
#miejsca zerowe
A = roots(P);

#tworzenie wielomianu p(x)
p = poly(pol2);#p(x) = (x-20)(x-19)...
#miejsca zerowe
B = roots(p);

#tworzenie wielomianu P(x) ze zmodyfikowanym wspolczynnikiem
MP = Poly(flipdim(pol3, 1));
C = roots(MP)


println("\nDla postaci naturalnej wielomianu Wilkinsona");
for i=1:20
  println("P(A[",i,"]) = ", P(A[i]))
end

println("\nDla wielomianu Wilkinsona");
for i=1:20
  println("p(A[",i,"]) = ", p(A[i]))
end

println("\nróżnice między wartościami roots() a rzeczywistymi");
for i=1:20
 println("A[i] - ", i, " = ", A[i] - (21-i))
end

for i=1:20
  println("MP(A[",i,"]) = ", MP(C[i]))
end

for i=1:20
  println("z(", i , ") - ", i , " = ", C[i] - (21-i));
end
