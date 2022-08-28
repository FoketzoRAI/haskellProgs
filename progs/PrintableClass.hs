module PrintableClass where

{- | Printable Class
Used for transform data to their data type names.
-}
class Printable a where
    toString :: a -> String

instance Printable Bool where
    toString True = "true"
    toString False = "false"

instance Printable () where
    toString () = "unit type"

instance (Printable a, Printable b) => Printable (a, b) where
    -- ^ Used for tuple types.
    toString (a, b) = let
        first = toString a
        second = toString b
        in "(" ++ first ++ "," ++ second ++ ")"


