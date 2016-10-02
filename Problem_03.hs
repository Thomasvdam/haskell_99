-- Find the k'th element of a list

elementAt :: [a] -> Int -> a
elementAt a x = a !! x

main = print(elementAt ['a'..'z'] 5)

