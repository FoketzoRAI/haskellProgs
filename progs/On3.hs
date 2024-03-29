module On3 where

{-| on3
 - Function like `on` but for 3 arguments
 -}
on3 :: (b -> b -> b -> c) -> (a -> b) -> a -> a -> a -> c
on3 op f x y z = op (f x) (f y) (f z)

