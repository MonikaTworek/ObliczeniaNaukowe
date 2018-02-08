#Monika Tworek
#229776

#MAIN

cArr=[-2.0,-2.0, -2.0, -1.0, -1.0, -1.0, -1.0,];
xArr=[1.0, 2.0, 1.99999999999999, 1.0, -1.0, 0.75, 0.25];

A = zeros(40,7);

function printMatrix(A)
  for i=1:40
      println(A[i,3])
  end
end


for i=1:7
  x = xArr[i]
  c = cArr[i]
  for j=1:40
    x = (x^2) + c
    A[j,i] = x
  end
end

#plot array - tablica słuzaca do  wyswietlana wykresu
pa = zeros(40);
n = 3;
for i=1:40
  pa[i] = A[i,n]
end

printMatrix(A)
