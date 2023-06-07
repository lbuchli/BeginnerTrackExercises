-- Chapter 09: Input and Output
module Ch09 where

import System.Random


{-|
Exercise: Define a function that reads a space-separated list of integers from
stdin and then prints out their sum. The following functions may be of use:
'getLine', 'words', 'read' (Int instance), 'sum', 'putStrLn' and 'show' (Int
instance)
|-}

sumIO :: IO ()
sumIO = _

{-|
Exercise: Check whether a function on Ints is always commutative. Since there
are a lot of integers to check, try to do 100 random tests instead. If all these
tests hold, return True, else, return False.
|-}

probablyCommutative :: RandomGen g => g -> (Int -> Int -> Int) -> Bool
probablyCommutative = _

{-|
Exercise: Create a 'fake quine' (see
https://en.wikipedia.org/wiki/Quine_(computing)). It should read this file as
source code and then print (only) its own definition. Since this is the last
exercise, it is ok to just find the first line of the definition and then print
until the file ends.
|-}

fakeQuine :: IO ()
fakeQuine = _
