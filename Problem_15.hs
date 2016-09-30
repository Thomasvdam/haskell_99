-- Replicate the number of elements in a list N times

myReplicate :: [a] -> Int -> [a]
myReplicate [] _ = []
myReplicate (x:xs) a = replicate a x ++ myReplicate xs a

main = print $ myReplicate "abcDEFghi" 5

