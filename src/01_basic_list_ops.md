# Operations Over List

* Lists are NOT ARRAYS!
* Every element in list must have the same type.

**Select first**
```haskell
head [1, 3, 5]
-- 1
```

**Remove first**
```haskell
tail [1, 3, 5]
-- [3, 5]
```

**Select last**
```haskell
last [1..5]
-- 5
```

**Remove last**
```haskell
init [1, 2, 4]
-- [1, 2]
```

**Select nth**
```haskell
[1, 3, 5] !! 1
-- 3
```
* Do not use too often - it is close to imperative style

**Select first _n_ items**
```haskell
-- take 3 [1, 2, 5, 4]
[1,2,5]
```

**Remove first _n_ items**
```haskell
drop 2 [1, 2, 5, 4]
-- [5, 4]
```

**Get number of items**
```haskell
-- length [1, 2, 5, 4]
4
```
* linear operation - not like in an array (one time op)

**Sum items**
```haskell
sum [1, 2, 5, 4]
-- 12
```

**Multiply items**
```haskell
product [1, 2, 5, 4]
-- 40
```

**Join two lists**
```haskell
[1, 2] ++ [3, 4]
-- [1,2,3,4]
```

**Reverse items**
```haskell
reverse [1, 2, 5, 4]
-- [4,5,2,1]
```

**Create tuple - split point determine by _nth_ index**
```haskell
splitAt 2 [1, 2, 3, 4]
-- ([1,2], [3,4])
```