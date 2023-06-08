-- Chapter 03: Types and Typeclasses
module Exercises where

{-|
Exercise: Fill the gaps (underscores), so that the file will typecheck. Your IDE
should yell at you if it doesn't. You can also check your answers against the
type GHC inferred for the same expression using the eval field below.
|-}

-- >>> :t _

a :: [Bool]
a = [True]

b :: (Bool, Bool)
b = (True, False)

c :: [Int]
c = [1, 2, 3]

d :: Int -> Int
d x = x

e :: Int -> Int -> Int
e x y = x + y

f :: Int
f = head [1, 2]

g :: ([a] -> a, (b, c) -> b)
g = (head, fst)


{-|
Exercise: Fill in an expression that matches the type. Take advantage of the
typeclasses used.
|-}

-- Example:
h :: Show a => a -> String
h a = show a

i :: Bounded a => (a, a)
i = (minBound, maxBound)

j :: Num a => a -> a
j x = x+1

k :: (Num b, Integral a) => a -> a -> b
k x y = fromIntegral x + fromIntegral y
