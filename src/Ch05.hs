-- Chapter 05: Recursion
module Ch05 where

{-|
Exercise: Implement the following functions. Recursion will be neccessary in
order to solve them. You can choose yourself whether to use pattern matching,
guards or case expressions.
|-}


-- 'replicate' replicates a value n times (resulting in a list of length n).
replicate :: Int -> a -> [a]
replicate = _

-- 'runningSum' adds the sum of all previous numbers in a list to the current
-- number. For this implementation, a helper function is neccessary. The helper
-- function is already given in the where clause. Try to understand why it is
-- neccessary.
runningSum :: Num a => [a] -> [a]
runningSum = _
  where
    go sum (x:xs) = let sum' = x+sum
                    in sum' : go sum' xs
    go _ [] = []

-- 'takeEverySnd' returns every second element of a list (starting with the first element).
takeEverySnd :: [a] -> [a]
takeEverySnd = _

-- 'takeEvery' returns every nth element of a list (starting from the first
-- element). You will need to define a helper function, which you can do in the
-- 'where' clause.
takeEvery :: Int -> [a] -> [a]
takeEvery = _
  where
    go = _

-- 'mergeSort' sorts a list using the merge sort technique. If you are unclear
-- on how that works, feel free to ask google or me. A merging and a splitting
-- helper function will be neccessary.
mergeSort :: Ord a => [a] -> [a]
mergeSort = _
  where
    split :: [a] -> ([a], [a])
    split = _

    merge :: ([a], [a]) -> [a]
    merge = _
