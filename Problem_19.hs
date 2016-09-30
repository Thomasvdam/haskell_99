-- Rotate a list N places to the left

myRotateLeft :: [a] -> Int -> [a]
myRotateLeft [] _ = []
myRotateLeft xs 0 = xs
myRotateLeft xs n = drop modN xs ++ take modN xs where
        modN = n `mod` length xs

main = do
    print $ myRotateLeft "1234567890" (-22)
    print $ myRotateLeft "1234567890" 5

