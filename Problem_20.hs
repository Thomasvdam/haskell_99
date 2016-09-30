-- Remove the N'th element from a list and return it + residue


myRemoveAt :: [a] -> Int -> (a, [a])
myRemoveAt [] _ = error "Can't remove from empty list"
myRemoveAt xs n
    | n < 0 || n > length xs = error "Can't remove from non-existent index"
    | otherwise = (xs !! (n-1), map fst $ filter (\(_,i) -> i/=n) $ zip xs [1..])

main = print $ myRemoveAt "AbCDEFGH" 2

