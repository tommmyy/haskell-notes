# Operations Over List

* Lists are NOT ARRAYS!
* Every element in list must have the same type.

**Select first**
```
> head [1, 3, 5]
1
```

**Remove first**
```
> tail [1, 3, 5]
[3, 5]
```

**Select last**
```
> last [1..5]
5
```

** Remove last**
```
> init [1, 2, 4]
[1, 2]
```

**Select nth**
```
> [1, 3, 5] !! 1
3
```
* _Do not use much - it is close to imperative style_

**Select first n items**
```
> take 3 [1, 2, 5, 4]
[1,2,5]
```

**Remove first n items**
```
> drop 2 [1, 2, 5, 4]
[5, 4]
```

** Get number of items
```
> length [1, 2, 5, 4]
4
```
* __linear operation - not like in an array (one time op)__

**Sum items**
```
> sum [1, 2, 5, 4]
12
```

**Multiply items**
```
> product [1, 2, 5, 4]
40
```

**Join two lists**
```
> [1, 2] ++ [3, 4]
[1,2,3,4]
```

**Reverse items**
```
> reverse [1, 2, 5, 4]
[4,5,2,1]
```

**Create tuple - split point determine by nth index**
```
> splitAt 2 [1, 2, 3, 4]
([1,2], [3,4])
```

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



