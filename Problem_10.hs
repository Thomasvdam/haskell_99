-- Run-length encoding. Pack elements in tuples listing their length.

import Data.List

myCount :: [a] -> (a, Int)
myCount x = (head x, length x)

myEncode :: (Eq a) => [a] -> [(a, Int)]
myEncode = map myCount . group

main = print(myEncode "aaaaaaBBBBBcccDDJADHSJKASSSSSSSk")

