# Types
e :: t

* expression _e_ has a type _t_
* type inference - computing of expression's type

List of types:
```haskell
Bool
Char
String -- list of Char
Integer  -- arbitrary precision
Int -- fixed precision
Float
```

## Generic Types:

**Lists**
* same type, arbitrary length
```haskell
[False, True] :: [Bool]
[['a'], ['a', 'b']] :: [[Char]]
```

**Tupples**
* type can vary, fixed length

```haskell
(1, True) :: (Int, Bool)
(1, True, 'C') :: (Int, Bool, Char)
```

# Boolean
Values:
```
True
False
```

```
> True && False
False

> True || False
True

> not True
> False

not True || True
> True

> True || True && False
True
> True || (True && False)
True

> (True || True) && False
False
```

* _&&_ higher priority over _||_

# String
* String is just a list of characters -> has the same operations as list

```
> "Hello"
"Hello"

> "Hello" ++ "World"
"HelloWorld

> length ("Hello" ++ "World")
10

> head "Hello"
'H'

> tail "Hello"
"ello"

> last "Hello"
'o'

> reverse "Hello"
"olleH"

> init "Hello"
"Hell"

> reverse(tail (reverse "Hello"))
"Hell"

> (reverse) ((tail) ((reverse) "Hello"))
"Hell"

> null "Hell"
False
```

# Checking type
* :t for getting type
* :: reads as "has type"

Excercises:
```
Prelude> :t True
True :: Bool

Prelude> : 'H'
'H' :: Char

Prelude> :t "Hello"
"Hello" :: [Char]

Prelude> :t 0
0 :: Num t => t

Prelude> :t 0.1
0.1 :: Fractional t => t
```