factors :: Int -> [Int]
factors n = [x | x <- [1..n], n `mod` x == 0]

prime :: Int -> Bool
prime x = factors x == [1, x]

primes :: Int -> [Int]
primes n = [x | x <- [2..n], prime x]