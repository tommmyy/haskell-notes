# Conditional expressions

```haskell
abs:: Num a => a -> a
abs n = if n >= 0 then n else -n
```

* always must have a _else_

# Guarded expressions

```haskell
abs'' :: Int -> Int
abs'' n | n >= 0    = n
        | otherwise = -n
```

# Pattern matching
```haskell
not :: Bool -> Bool
not False = True
not True = False

(&&) :: Bool -> Bool
True && True = True
_ && _ = False
haskell

* Evaluated from left to right,  top to bottom
*  You cannot repeat arguments, type error:
```haskell
a && a = a
_ && _ = False
```

# List patterns

```haskell
[1, 2, 3, 4] -- syntax sugar for:
1 : (2 : (3 : (4 : [])))
```

```haskell
head :: [a] -> a
head (x:_)   = x

tail        :: [a] -> [a]
tail (_:xs)  = xs
```
* You must use parenthesis

# Lambda Expressions
* Lambda is nameless function
* Haskell is based on  Lambda calculus

Example:
```haskell
\x -> x + 1
```

Useful for curring:
```haskell
add x y = x + y

-- as lambda:

add = \x -> (\y -> x + y)
```

Useful for applicative programming:

```haskell
--Instead of:

odds :: Int -> [Int]
odds n = map f [0..n-1]
         where
            f x = x*2 + 1

-- write:

odds n = map (\x -> x*2 + 1) [0..n-1]
```

# Sections
```
> 1+2
3

> (+) 1 2
> (1+) 2
> (+2) 1
```






















