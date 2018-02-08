#Monika Tworek
#229776

using MyModule

println("x^2 - 9")
println("metoda bisekcji:  ",mbisekcji(x -> x^2 - 9, 1.5, 6.5, 5.0e-6,5.0e-6))
println("metoda stycznych: ",mstycznych(x -> x^2 - 9, x -> 2*x, 1.5, 5.0e-6,5.0e-6, 50))
println("metoda siecznych: ",msiecznych(x -> x^2 - 9, 1.0, 2.0, 5.0e-6,5.0e-6, 50))
println("metoda siecznych: ",msiecznych(x -> x^2 - 9, 1.0, 2.0, 5.0e-6,5.0e-6, 2))

println("\nx^4 - 16")
println("metoda bisekcji:  ",mbisekcji(x -> x^4 - 16, 1.5, 6.5, 5.0e-6,5.0e-6))
println("metoda stycznych: ",mstycznych(x -> x^4 - 16, x -> 4*(x^3), 1.5, 5.0e-6,5.0e-6, 50))
println("metoda siecznych: ",msiecznych(x -> x^4 - 16, 1.0, 1.5, 5.0e-6,5.0e-6, 50))
println("metoda stycznych: ",mstycznych(x -> x*e^(-x), x -> (-e^(-x))*(x-1), 1.0, 1.0e-5, 1.0e-5, 50))
