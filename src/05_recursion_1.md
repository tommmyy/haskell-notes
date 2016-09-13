# Recursion

* In some cases more natural way to write a function.

## Example Factorial

* Function _factorial_:
```haskell
factorial 0 = 1
factorial n = n * factorial (n-1)
```

Can be imagined as follows:

```haskell
factorial 3
3 * factorial 2
3 * 2 * factorial 1
3 * 2 * 1 * factorial 0
3 * 2 * 1 * 1
3 * 2 * 1
3 * 2
6
```

## Recursion on Lists

* Function _product_:
```haskell
product :: [Int] -> Int
product [] = 1
product (n:ns) = n * product ns
```

* Function _length_:
```haskell
length :: [a] -> Int
length [] = 0
length (_:xs) = 1 * length xs
```

* Function  _reverse_:
```haskell
reverse :: [a] -> [a]
reverse [] = []
reverse (x:xs) = reverse xs ++ [x]
```

Can be imagined as follows:

```haskell
reverse [1,2,3]
reverse [2,3] ++ [1]
(reverse [3] ++ [2]) ++ [1]
((reverse [] ++ [3]) ++ [2]) ++ [1]
(([] ++ [3]) ++ [2]) ++ [1]
([3] ++ [2]) ++ [1]
[3, 2] ++ [1]
[3, 2, 1]
```

# Multiple Arguments

* Function _zip_:
```haskell
zip :: [a] -> [b] -> [(a, b)]
zip [] _ = []
zip _ [] = []
zip (x:xs) (y:ys) = (x, y) : zip xs ys
-- zip (x:xs) (y:ys) = [(x, y)] ++ zip xs ys
```

Can be imagined as follows:

```haskell
zip [1, 2] [3, 4]
(1, 3) : zip [2] [4]
(1, 3) : (2, 4) : zip [] []
(1, 3) : (2, 4) : []
...
```

* Function _drop_:
```haskell
drop :: Int -> [a] -> [a]
drop 0 xs = xs
drop _ [] = []
drop n (_:xs) = drop (n - 1) xs
```
Can be imagined as follows:

```haskell
drop 2 [1, 2, 3]
drop 1 [2, 3]
drop 0 [3]
[3]
```

* Operator (++)

```haskell
(++) :: [a] -> [a] -> [a]
[] ++ ys = ys
(x:xs) ++ ys = x : (xs ++ ys)
```

Can be imagined as follows:
```haskell
[1,2] ++ [3,4]
1 : ([2] ++ [3,4])
1 : (2 : ([] ++ [3,4]))
1 : (2 : [3,4])
1 : [2,3,4]
[1,2,3,4]

```
