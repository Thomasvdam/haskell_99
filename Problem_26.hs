-- Generate all sets of K elements from a set

myCombinations :: Int -> [a] -> [[a]]
myCombinations 0 _ = [[]]
myCombinations n xs | n > (length xs) = [[]]
myCombinations n xs = filter ((==n) . length) [ xs !! i : x
    | i <- [0..(length xs)-1]
    , x <- myCombinations (n-1) (drop (i+1) xs) ]

main = do
    print $ myCombinations 5 ['a'..'j']
    print "Number of combinations when selecting 3 people from a group of 12"
    print $ length (myCombinations 3 ['a'.. 'l'])
    print $ myCombinations 3 ['a'..'d']
