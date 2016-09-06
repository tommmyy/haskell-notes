# List Comprehensions

```
> [x^2 | x <- [1..5]]
[1, 2, 9,  16, 25]
```

* _x <- []_ read as _x is taken from_
* _x <- [1..5]_ is _generator_

## Multiple Generators

```haskell
> [(x^2, y^2) | x <- [1..3], y <- [1, 2]]
[(1,1),(1,4),(4,1),(4,4),(9,1),(9,4)]
```

* Multiple generators are like "nested loops" where first generator is outer loop

## Dependant generators

```haskell
> [(x, y) | x <- [1..3], y <- [x..3]]
[(1,1), (1, 2), (1,3), (2, 2), (2, 3), (3, 3)]
```

# Guards

```haskell
> [x | x <- [1..10], odd x]
[1,3,5,7,9]


factors :: Int -> [Int]
factors n = [x | x <- [1..n], n `mod` x == 0]

> factors 15
[1,3,5,15]
```