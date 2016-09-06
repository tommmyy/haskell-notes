# Polymorphic function

For example:
```haskell
length :: [a] -> Int
```
* _a_ is the _type variable_
* Type variables are written in lower case:
```
a, b, c, ...
```

```haskell
fst :: (a, b) -> a
snd :: (a, b) -> b
head :: [a] -> a
take :: Int -> [a] -> [a]
take :: Int -> ([a] -> [a])
id :: a -> a
```

# Overloaded function

For example:
```haskell
sum :: Num a => [a] -> a
```
* type variable "a" is in the number class

Other classes:
* _Num_ - numeric
* _Ord_ - ordered
* _Eq_ - equality

```
(==) :: Eq a => a -> a -> Bool
(>) :: Ord a => a -> a -> Bool
(+) :: Num a => a -> a -> a
```

Exercise answers:
```
['a','B'] :: [Char]
('a','B') :: (Char,Char)
[(False, '0'), (True, '1')] :: [(Bool, Char)]
([False, True], [0, 1]) :: Num a => ([Bool], [a])
[tail, init, reverse] :: [ [a] -> [a] ]
second xs = head(tail xs)
```