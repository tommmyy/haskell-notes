# Naming

* functions and args must start with lowercase
* types must start with uppercase
* you can use _'_ in name:
```haskell
x'
```
* convention that list ends with "s"
```haskell
ns xs   -- lists
nss     -- list of lists
```

# Layouts
White space MATTERS!

```haskell
a = b + c
  where
    b = 1
    c = 2
d = a * 2
```