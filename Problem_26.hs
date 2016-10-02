-- Generate all sets of K elements from a set

myCombinations :: Int -> [a] -> [[a]]
myCombinations 0 _ = [[]]
myCombinations n xs | n > (length xs) = [[]]
myCombinations n (x:xs) = 
    let allSublists = takeWhile isLength [ take (n-1) (drop m xs) | m <- [0..(length xs)] ] where
        isLength xs' = if (length xs') == (n-1) then True else False
    in  (map (x:) allSublists) ++ myCombinations n xs
 
main = do
    print $ myCombinations 5 ['a'..'j']
    print $ myCombinations 3 ['a'..'c']
