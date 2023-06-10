-- Chapter 09: Input and Output
module Exercises where

import System.Random


{-|
Exercise: Define a function that reads a space-separated list of integers from
stdin and then prints out their sum. The following functions may be of use:
'getLine', 'words', 'read' (Int instance), 'sum', 'putStrLn' and 'show' (Int
instance)
|-}

sumIO :: IO ()
sumIO = do
  result <- show . sum . map read . words <$> getLine
  putStrLn $ "The sum is " ++ result

{-|
Exercise: Check whether a function on Ints is always commutative. Since there
are a lot of integers to check, try to do 100 random tests instead. If all these
tests hold, return True, else, return False.
|-}

probablyCommutative :: RandomGen g => g -> (Int -> Int -> Int) -> Bool
probablyCommutative g f = and [f x y == f y x | (x, y) <- randoms g]

{-|
Exercise: Create a 'fake quine' (see
https://en.wikipedia.org/wiki/Quine_(computing)). It should read this file as
source code and then print (only) its own definition. Since this is the last
exercise, it is ok to just find the first line of the definition and then print
until the file ends.
|-}

fakeQuine :: IO ()
fakeQuine = do
  lines <- split_at '\n' <$> readFile "/home/lukas/workspace/personal/BeginnerTrackExercises/Ch09/Exercises.hs"
  let tail = dropWhile (not . starts_with "fakeQuine") lines
  putStrLn $ foldr (\x xs -> xs ++ "\n" ++ x) "" tail
 where
   split_at x s = case dropWhile (==x) s of
        "" -> []
        s' -> let (w, s'') = break (==x) s'
              in w : split_at x s''
   starts_with [] ys = True
   starts_with (x:xs) (y:ys) | x == y = starts_with xs ys
                             | otherwise = False
