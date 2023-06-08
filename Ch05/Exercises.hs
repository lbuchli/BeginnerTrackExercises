-- Chapter 05: Recursion
module Exercises where

{-|
Exercise: Implement the following functions. Recursion will be neccessary in
order to solve them. You can choose yourself whether to use pattern matching,
guards or case expressions.
|-}


-- 'replicate' replicates a value n times (resulting in a list of length n).
myReplicate :: Int -> a -> [a]
myReplicate 0 _ = []
myReplicate n x = x : replicate (n-1) x


-- 'runningSum' adds the sum of all previous numbers in a list to the current
-- number. For this implementation, a helper function is neccessary. The helper
-- function is already given in the where clause. Try to understand why it is
-- neccessary.
runningSum :: Num a => [a] -> [a]
runningSum xs = go 0 xs
  where
    go sum (x:xs) = let sum' = x+sum
                    in sum' : go sum' xs
    go _ [] = []

-- 'takeEverySnd' returns every second element of a list (starting with the first element).
takeEverySnd :: [a] -> [a]
takeEverySnd (x:y:xs) = x : takeEverySnd xs
takeEverySnd xs = xs

-- 'takeEvery' returns every nth element of a list (starting from the first
-- element). You will need to define a helper function, which you can do in the
-- 'where' clause.
takeEvery :: Int -> [a] -> [a]
takeEvery n xs = go 0 xs
  where
    go 0 (x:xs) = x : go n xs
    go m (x:xs) = go (m-1) xs
    go _ [] = []

-- 'mergeSort' sorts a list using the merge sort technique. If you are unclear
-- on how that works, feel free to ask google or me. A merging and a splitting
-- helper function will be neccessary.
mergeSort :: Ord a => [a] -> [a]
mergeSort xs = let (ys, zs) = split xs
               in merge (mergeSort ys) (mergeSort zs)
  where
    split :: [a] -> ([a], [a])
    split (y:z:xs) = let (ys, zs) = split xs
                     in (y:ys, z:zs)
    split [x] = ([x], [])
    split [] = ([], [])

    merge :: ([a], [a]) -> [a]
    merge (y:ys, z:zs) | y < z = y : merge ys (z:zs)
                       | otherwise = z : merge (y:ys) zs
    merge ([], zs) = zs
    merge (ys, []) = ys
