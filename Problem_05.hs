-- Reverse a list

myReverse :: [a] -> [a]
myReverse = foldl (\x n -> n:x) []

main = print(myReverse "This is not a palindrome.")

