-- Drop every N'th element from a list

myDrop :: [a] -> Int -> [a]
myDrop [] _ = []
-- zip: merge the list with their 1-based index: [(xs0,1), (a1,2)..]
-- filter: remove all N'th elements from the list of tuples
-- fst: take first element from all remaining tuples
myDrop xs a = map fst $ filter (\(x,i) -> i `mod` a /= 0) $ zip xs [1..]

main = print $ myDrop "ab1cd2ef3gh" 3

