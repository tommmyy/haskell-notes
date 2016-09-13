import Prelude hiding (product, length, reverse, zip, drop, (++))

factorial :: Int -> Int
factorial 0 = 1
factorial n = n * factorial (n-1)


product :: [Int] -> Int
product [] = 1
product (n:ns) = n * product ns

length :: [a] -> Int
length [] = 0
length (_:xs) = 1 + length xs

reverse :: [a] -> [a]
reverse [] = []
reverse (x:xs) = reverse xs ++ [x]

zip :: [a] -> [b] -> [(a, b)]
zip [] _ = []
zip _ [] = []
zip (x:xs) (y:ys) = (x, y) : zip xs ys
-- zip (x:xs) (y:ys) = [(x, y)] ++ zip xs ys

drop :: Int -> [a] -> [a]
drop 0 xs = xs
drop _ [] = []
drop n (_:xs) = drop (n - 1) xs

(++) :: [a] -> [a] -> [a]
[] ++ ys = ys
(x:xs) ++ ys = x : (xs ++ ys)

