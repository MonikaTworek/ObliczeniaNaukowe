#Monika Tworek
#229776

using MyModule

println("metoda bisekcji:  ",mbisekcji(x -> sin(x)-(1/2*x)^2, 1.5, 2.5, 5.0e-6,5.0e-6))
println("metoda Newtona: ",mstycznych(x -> sin(x)-(1/2*x)^2, x -> cos(x)-(x/2), 1.5, 5.0e-6,5.0e-6, 50))
println("metoda siecznych: ",msiecznych(x -> sin(x)-(1/2*x)^2, 1.0, 2.0, 5.0e-6,5.0e-6, 50))
