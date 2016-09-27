-- Find the number of elements in a list

myLength :: [a] -> Int
myLength = foldr (\_ n -> 1 + n) 0

main = print(myLength [1..100])

