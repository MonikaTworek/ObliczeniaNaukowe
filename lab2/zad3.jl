#Monika Tworek
#229776
workspace();
include("hilb.jl");
include("matcond.jl");

# A - macierz n x n; b - wektor n-elementowy
function hilbert()
  println("\n HILBERT MATRIX \n");
  result = 0.0;
  for n=1:20
    A = hilb(n);
    x = ones(n);

    b = A * x;

    resultdiv = A\b;
    resultpow = inv(A) * b;
    println("n = ",n, " ");
    println("rzad macierzy(A): ",rank(A));
    println("Result A/b: ", norm(x - resultdiv)/norm(x));
    println("Result A^-1*b: ", norm(x - resultpow)/norm(x));
    println();


  end
end

function randomM()

  println("\n RANDOM MATRIX \n");
  condM = [0.0, 1.0, 3.0, 7.0, 12.0, 16.0];
  number = [5, 10, 20];

  for i=1:3
    for j=1:6
      A = matcond(number[i], 10.0 ^ condM[j]);
      x = ones(number[i]);

      b = A * x;

      resultdiv = A\b;
      resultpow = inv(A) * b;
      println("rzad macierzy: ",rank(A));
      println("wskaznik uwarunkowania: ",cond(A))
      println("n: ",number[i])
      println("Result A/b: ", norm(x - resultdiv)/norm(x));
      println("Result A^-1 *b: ", norm(x - resultpow)/norm(x));
      println();
    end
  end
end

hilbert()
randomM()
