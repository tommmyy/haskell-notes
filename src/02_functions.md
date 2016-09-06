- function is mapping from values of one type to values of another type

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


Curring conventsions
====================

Arrow associate to the right:

Int -> Int -> Int -> Int
Means: 
Int -> Int -> (Int -> Int)

Function application associate to the left:
multiple x y z
Means:
((multiple x) y) z

