-- Split a list into two parts

mySplit :: [a] -> Int -> ([a],[a])
mySplit [] _ = ([],[])
mySplit xs n = (map fst $ filter (\(_,ni) -> ni <= n) helper, map fst $ filter (\(_,ni) -> ni > n) helper) where
    helper = zip xs [1..]

main = print $ mySplit "aaaaabbbbbcccccdddddeeeee" 10

