Polymorphic f
======================
length :: [a] -> Int

- a is "type variable"
- Type Variable are written in lower case: a, b, c, ...

fst :: (a, b) -> a
snd :: (a, b) -> b
head :: [a] -> a
take :: Int -> [a] -> [a]
take :: Int -> ([a] -> [a])
id :: a -> a

Overloaded f
======================

sum :: Num a => [a] -> a

- Type Variable "a" is in the Num class

Other classeses:
=============
Num - numeric
Ord - ordered
Eq - equality


(==) :: Eq a => a -> a -> Bool
(>) :: Ord a => a -> a -> Bool
(+) :: Num a => a -> a -> a

Ex:

['a','B'] :: [Char]
('a','B') :: (Char,Char)
[(False, '0'), (True, '1')] :: [(Bool, Char)]
([False, True], [0, 1]) :: Num a => ([Bool], [a])
[tail, init, reverse] :: [ [a] -> [a] ]

second xs = head(tail xs)