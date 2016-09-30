-- Duplicate the elements in a list

myDuplicate :: [a] -> [a]
myDuplicate [] = []
myDuplicate (x:xs) = [x,x] ++ myDuplicate xs

main = print $ myDuplicate "abcDEFghi"

