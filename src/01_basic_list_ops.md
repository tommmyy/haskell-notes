Download: https://www.haskell.org/ghc/download_ghc_8_0_1#windows64

Ops over list:

- lists are NOT ARRAYS! 
- every element in list must have the same type

> head [1, 3, 5]   
1

> tail [1, 3, 5] 
[3, 5]

> last [1..5]
5

> init [1, 2]
[1]


> [1, 3, 5] !! 1
3

- nemělo by se používat, zřejmě člověk sklouzl do imperativní programování


> take 3 [1, 2, 5, 4]
[1,2,5]

> drop 2 [1, 2, 5, 4]
[5, 4]

> length [1, 2, 5, 4]
4
- linear operation - not like in an array (one time op)

> sum [1, 2, 5, 4]
12

> product [1, 2, 5, 4]
40

> [1, 2] ++ [3, 4]
[1,2,3,4]


> reverse [1, 2, 5, 4]
[4,5,2,1]

> splitAt 2 [1, 2, 3, 4]
([1,2], [3,4])

Applying functions

In Math, physics:
f(a, b) + c d

Haskell:
f a b + c*d

Other expressions:

f(x)        ; f x
f(x, g(x))  ; f x (g x)
g(x)h(y)    ; g x * h y


Syntax sugar: ``

x `f` y ; f x y


Tuples
========================
Can contain different types

(1, True, "String")

Pairs
========================
(1, "Hello")

> fst (1, "Hellp")
 1

> snd (1, "Hellp")
"Hellp"



