-- Create a list with all integers in a given range

myRange :: Int -> Int -> [Int]
myRange a b = [a..b]

-- Seems a little too easy so let's try without the built in range
myRange' :: Int -> Int -> [Int]
myRange' a b
    | a == b = [a]
    | a > b = a : myRange' (a-1) b
    | a < b = a : myRange' (a+1) b

main = do
    print $ myRange 5 10
    print $ myRange' (-5) (-10)

