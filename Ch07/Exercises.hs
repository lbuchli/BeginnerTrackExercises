-- Chapter 07: Modules
module Exercises (wordCount, keySet, union1, union2) where

import Data.Map (Map)
import qualified Data.Map as Map
import Data.Set (Set)
import qualified Data.Set as Set

import Data.List (delete, intersect, nub)

{-|
Exercise: Using the functions you just learned about, implement a function that
counts the number of words in a text.
|-}

wordCount :: String -> Int
wordCount = length . words

{-|
Exercise: Using Data.Map and Data.Set, implement a function that converts a Map
to a Set of keys.
|-}

keySet :: Ord k => Map k v -> Set k
keySet = Set.fromList . Map.keys

{-|
Exercise: Implement 'union' for lists using
(1) At most 'delete', (:), and 'foldr'
(2) At most 'filter', intersect', (++) and 'nub'
|-}

union1 :: Eq a => [a] -> [a] -> [a]
union1 = foldr (\z zs -> z : delete z zs)

union2 :: Eq a => [a] -> [a] -> [a]
union2 xs ys = xs ++ filter (`notElem` intersect xs ys) (nub ys)

{-|
Exercise: Export all functions you have defined in this module explicitly.
|-}
