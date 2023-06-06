-- Chapter 03: Types and Typeclasses
module Ch03 where

{-|
Exercise: Fill the gaps (underscores), so that the file will typecheck. Your IDE
should yell at you if it doesn't. You can also check your answers against the
type GHC inferred for the same expression using the eval field below.
|-}

-- >>> :t _

a :: [Bool]
a = _

b :: (Bool, Bool)
b = _

c :: _
c = [1, 2, 3]

d :: Int -> Int
d _ = _

e :: _
e x y = x + y

f :: _
f = head [1, 2]

g :: _
g = (head, fst)


{-|
Exercise: Fill in an expression that matches the type. Take advantage of the
typeclasses used.
|-}

-- Example:
h :: Show a => a -> String
h a = show a

i :: Bounded a => (a, a)
i = _

j :: Num a => a -> a
j _ = _

k :: (Num b, Integral a) => a -> a -> b
k _ _ = _
