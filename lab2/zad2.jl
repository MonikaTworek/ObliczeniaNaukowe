#Monika Tworek
#229776
using SymPy

x=symbols("x");
println("wynik to: ", limit(exp(x) * log(1 + exp(-x)), x => oo))
