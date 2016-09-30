-- Extract a slice from a list, 1-indexed

mySlice :: [a] -> Int -> Int -> [a]
mySlice xs from to = map fst $ filter (\(_,i) -> i >= from && i <= to) $ zip xs [1..]

main = print $ mySlice "I'll just have a single slice please" 16 23

