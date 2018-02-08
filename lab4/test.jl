#Monika Tworek
#229776

# push!(LOAD_PATH, "C:\\Users\\Monika\\Desktop\\lab4")
using MyModule

#wynik powinien wynosić: [1.0,2.0,-0.375,0.175] (przykład z wykładu)
# println("ilorazy roznicowe: ", ilorazyRoznicowe([3.0, 1.0, 5.0, 6.0], [1.0, -3.0, 2.0, 4.0]))

#wynik powinien wynosić: 1
# println("wartosc wielomianu: ", warNewton([3.0, 1.0, 5.0, 6.0], ilorazyRoznicowe([3.0, 1.0, 5.0, 6.0], [1.0, -3.0, 2.0, 4.0]) , 3.0))

#wynik powinien wynosić: [-8.75, 7.525, -1.95, 0.175]
println("naturalna: ", naturalna([-1.0, 0.0, 1.0, 2.0], ilorazyRoznicowe([-1.0, 0.0, 1.0, 2.0], [-1.0, 0.0, -1.0, 2.0] )))

# powinien zostać wkonany wykres funkcji |x|
rysujNnfx(x->abs(x), -1.0, 1.0, 5)
