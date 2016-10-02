-- Find whether a list is a palindrom

isPalindrome :: Eq a => [a] -> Bool
isPalindrome x = reverse x == x

main = do
    print(isPalindrome "Palindrome")
    print(isPalindrome "radar")
    print(isPalindrome [1,2,3,4,5,4,3,2,1])

