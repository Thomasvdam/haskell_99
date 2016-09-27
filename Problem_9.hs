-- Pack consecutive elements in sublists
module Problem_9 
( myPack
) where

myPack :: (Eq a) => [a] -> [[a]]
myPack [] = [[]]
myPack (x:xs) = (x : takeWhile (==x) xs) : myPack (dropWhile (==x) xs)

main = print(myPack "AAAAAABBBBCCCDDEFF")

