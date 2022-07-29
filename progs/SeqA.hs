module SeqA where

{-| Sequence A
 -  Realization: Tail recursion
 -  param: n - sequence number of A sequence
 -  a0 = 1; a1 = 2; a2 = 3; a(n) = a(n+2) + a(n+1) - 2 * a(n) 
 -}
seqA :: Integer -> Integer
seqA n
  | n == 0 = 1 -- a0
  | n == 1 = 2 -- a1
  | n == 2 = 3 -- a2
  | n >= 3 = let
    -- | Functional of seqA
    seqA' :: Integer -> Integer -> Integer ->  Integer -> Integer
    seqA' a2 a1 a0 n = 
        if n >= 3 then 
            seqA' (a2 + a1 - 2 * a0) a2 a1 (n - 1)
        else
            a2
    in seqA' 3 2 1 n
  | otherwise = error "Number should be greater or equal to 0"
