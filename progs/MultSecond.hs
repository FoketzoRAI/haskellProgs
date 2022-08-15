module MultSecond where

import Data.Function

multSecond :: (a, Integer) -> (a, Integer) -> Integer
multSecond = g `on` h

g :: Integer -> Integer -> Integer
g = (*)

h :: (a, b) -> b
h = snd 
