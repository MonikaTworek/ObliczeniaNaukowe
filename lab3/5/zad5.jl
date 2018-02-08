#Monika Tworek
#229776

using MyModule

println("metoda bisekcji: [0.0, 1.0] x = ",mbisekcji(x->(e^x)-(3*x), 0.0, 1.0, 1.0e-4,1.0e-4))
println("metoda bisekcji: [1.0, 2.0] x = ",mbisekcji(x->(e^x)-(3*x), 1.0, 2.0, 1.0e-4,1.0e-4))
