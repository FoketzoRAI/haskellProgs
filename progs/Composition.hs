module Composition where

{-| doItYourself
 - doItYourself = f (g (h x)) <- Composition
 -}
doItYourself = f . g . h

f = logBase 2

g = (^3)

h = max 42
