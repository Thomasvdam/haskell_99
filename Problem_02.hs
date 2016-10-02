-- Find the last but one element of a list

myButLast :: [a] -> a
myButLast = last . init

main = print(myButLast ['a'..'z'])

