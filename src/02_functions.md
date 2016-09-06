# Functions

Function is a mapping from values of one type to values of another type

```haskell
not :: Bool -> Bool
isDiging  :: Char -> Int

add :: (Int, Int) -> Int
add (x, y) = x + y

zeroto :: Int -> [Int]
zeroto n = [0..n]

zeroto :: Int -> [Int]
zeroto n = [0..n]

Curried function
add' :: Int -> (Int -> Int)
add' x y = x + y

multiple :: Int -> (Int -> (Int -> Int))
multiple x y z -> x*y*z
```

# Curring convensions

Arrow associate to the right:
```haskell
-- Expression:
Int -> Int -> Int -> Int

-- Means:
Int -> (Int -> (Int -> Int))
```

Function application associate to the left:

```haskell
-- Expression:
multiple x y z

-- Means:
((multiple x) y) z
```