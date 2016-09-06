import Prelude hiding ((||), (&&))

abs' :: Int -> Int
abs' n = if n >= 0 then n else -n

signum' :: Int -> Int
signum' n = if n > 0 then 1 else
    if n == 0 then 0 else -1

abs'' :: Int -> Int
abs'' n | n >= 0    = n
        | otherwise = -n

signum'' :: Int -> Int
signum'' n  | n > 0     = 1
            | n == 0    = n
            | otherwise = -1

add' = \x -> (\y -> x + y)

const' :: a -> b -> a
const' x _ = x

const'' :: a -> (b -> a)
const'' x = \_ -> x

odds :: Int -> [Int]
odds n = map (\x -> x*2 + 1) [0..n-1]
