module Integration where

iterations :: Double
iterations = 100000

{-| Integration
 -  param: f - any single argument function, like `sin`, `cos`
 -  param: a - start determinant.
 -  param: b - end determinant.
 -  ∫(a->b)f(x)dx = sum(a->b)
 -  If `a` is greater than `b`, then result is negated. 
 -}
integration :: (Double -> Double) -> Double -> Double -> Double
integration f a b = trapeziumMethod 0 a iterations where
    {-| Trapezium Method
    -  Realization: Tail recursion
    -  param: s - sum of trapezium areas.
    -  param: x - dynamic point.
    -  param: n - amount of iterations
    -  S(n)=((f(a)+f(a+h))/2)*h
    -  S = S(a) + S(a+h) + S(a+2h) + ... + S(a+(n-1)h)  <- Result
    -}
    h = (b - a) / iterations -- interval between points.
    trapeziumMethod :: Double -> Double -> Double -> Double
    trapeziumMethod s x 0 = s
    trapeziumMethod s x n = trapeziumMethod (s + (h * (f x + f (x + h))) / 2) (x + h) (n - 1)