-- Direct run-length encoding; no explicit sublists

data EncodedList a = Single a | Multiple (a, Int) deriving Show

myEncodeDirect :: (Eq a) => [a] -> [EncodedList a]
myEncodeDirect [] = []
myEncodeDirect (x:xs)
    | count == 1 = Single x : myEncodeDirect xs
    | otherwise = Multiple (x, count) : myEncodeDirect rest
    where
        (matched, rest) = span (==x) xs
        count = 1 + length matched

main = print $ myEncodeDirect "aaaaaBccccDeeFFgAAAA"

