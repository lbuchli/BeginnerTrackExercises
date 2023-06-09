-- Chapter 06: Higher order functions
module Exercises where

{-|
Exercise: What is the type of the following expressions? Use the prompt below to
find the type of predifined functions.
|-}

-- >>> :t even

a :: (a -> b) -> [a] -> [b]
a = map

b :: a -> [a]
b = replicate 3

c :: Num n => n -> n
c = (1 +)

d :: Num tx => ty -> tx
d = (\x -> \y -> x) 3

e :: [a] -> [Bool]
e = map (const False)

f :: Integral i => [i] -> [i]
f = filter even

g :: Num n => n -> [n] -> n
g = foldr (+)

h :: Integral i => i -> Bool
h = (even $)

i :: Integral i => [i] -> [i]
i = filter even . map (+1)

j :: (a -> [b]) -> a -> [Bool]
j = (map (const True) .)

{-|
Exercise: Implement the following functions using foldr.
|-}

-- 'length' returns the length of a list.
length :: [a] -> Int
length = foldr (\_ sum -> sum + 1) 0

-- 'myFilter' behaves like 'filter'.
myFilter :: (a -> Bool) -> [a] -> [a]
myFilter p = foldr (\x ys -> if p x then x : ys else ys) []

-- 'mapIf' applies a function only if a condition is true, otherwise, the value is left unchanged.
mapIf :: (a -> Bool) -> (a -> a) -> [a] -> [a]
mapIf p f = foldr (\x ys -> if p x then f x : ys else x : ys) []

-- 'stretch' stretches a list by repeating each element once, e.g. [1,2,3] -> [1,1,2,2,3,3]
stretch :: [a] -> [a]
stretch = foldr (\x ys -> x : x : ys) []
