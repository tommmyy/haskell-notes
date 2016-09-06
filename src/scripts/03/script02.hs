import Prelude hiding ((||), (&&))
halve :: [t] -> ([t], [t])
halve xs = (take n xs, drop n xs)
                where n = (length xs `div` 2)

halve'      :: [t] -> ([t], [t])
halve' xs    = splitAt n xs
                where n = (length xs `div` 2)

safetail1   :: [a] -> [a]
safetail1 xs = if null xs then xs else tail xs

safetail2 ::    [a] -> [a]
safetail2 xs    | null xs   = xs
                | otherwise = tail xs

safetail3       ::    [a] -> [a]
safetail3 []     = []
safetail3 (_:xs) = xs

{-
    Implement ||
-}

(||)                :: Bool -> Bool -> Bool
False || False       = False
_ || _               = True


{-
    Implement &&
-}

-- Impl1:
-- (&&)
-- True && a           = a
-- False && _          = False

-- Impl2:
-- a && b = if a   then
--                     if b then True else False
--                 else False

-- Impl3:
a && b = if a then b else False


{-
	Show how the curried function definition

	mult x y z = x * y * z

	can be understood in terms of lambda expressions.
-}


mult = \x -> (\y -> (\z -> x*y*z))

mult2 = \x -> \y -> \z -> x*y*z


{-
	Remove takes a number n and a list and removes the element at position n from the list.
-}
remove :: Int -> [a] -> [a]
remove n xs = (take (n) xs) ++ (drop (n + 1) xs)



