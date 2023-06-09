-- Chapter 06: Higher order functions
module Exercises where

{-|
Exercise: What is the type of the following expressions? Use the prompt below to
find the type of predifined functions.
|-}

-- >>> :t even

a :: _
a = map

b :: _
b = replicate 3

c :: _
c = (1 +)

d :: _
d = (\x -> \y -> x) 3

e :: _
e = map (const False)

f :: _
f = filter even

g :: _
g = foldr (+)

h :: _
h = (even $)

i :: _
i = filter even . map (+1)

j :: _
j = (map (const True) .)

{-|
Exercise: Implement the following functions using foldr.
|-}

-- 'length' returns the length of a list.
length :: [a] -> Int
length = _

-- 'myFilter' behaves like 'filter'.
myFilter :: (a -> Bool) -> [a] -> [a]
myFilter = _

-- 'mapIf' applies a function only if a condition is true, otherwise, the value is left unchanged.
mapIf :: (a -> Bool) -> (a -> a) -> [a] -> [a]
mapIf = _

-- 'stretch' stretches a list by repeating each element once, e.g. [1,2,3] -> [1,1,2,2,3,3]
stretch :: [a] -> [a]
stretch = _
