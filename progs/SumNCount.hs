module SumNCount where


{- Sum the digits in the number + get amount of digits
 -  Realization: Tail recursion
 -  param: x - a number
 -  1 = (1,1); 10 = (1,2); 12321 = (9,5) 
 -}
sumNCount :: Integer -> (Integer, Integer)
sumNCount x = let
    sumCount :: Integer -> Integer -> Integer -> (Integer, Integer)
    sumCount acc digitsCount n
        | div n 10 == 0 && mod n 10 < 10 = (acc + n, digitsCount)
        | otherwise = sumCount (acc + mod n 10) (digitsCount + 1) (div n 10)
    in sumCount 0 1 (abs x)
