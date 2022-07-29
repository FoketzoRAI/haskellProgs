module ExtendedFibonacciAccumulator where

-- Functional of fibonacci
fib' :: Integer -> Integer -> Integer -> Integer
fib' a b n | n == 0 = a
           | otherwise = fib' b (a+b) (n-1)

{-| Fibonacci
 -  Realization: Tail recursion
 -  param: n - sequence number of fibonacci
 -  a0 = 0; a1 = 1; a(n) = a(n-1) + a(n-2) 
 -  If `n` is even and negative, then result is negated
 -}
fibonacci :: Integer -> Integer
fibonacci n | n >= 0 = fib' 0 1 n
            | otherwise = if odd n
              then fib' 0 1 $ abs n
              else - (fib' 0 1 $ abs n)
