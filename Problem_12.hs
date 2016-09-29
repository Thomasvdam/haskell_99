-- Decode a run-length encoded list

data EncodedList a = Single a | Multiple a Int deriving Show

myDecode :: [EncodedList a] -> [a]
myDecode [] = []
myDecode [Single a] = [a]
myDecode [Multiple a b] = replicate b a
myDecode (x:xs) = (myDecode [x]) ++ (myDecode xs)

--main = print $ myDecode [Multiple 'a' 10]
main = print $ myDecode [Multiple 'a' 4, Single 'b', Single 'c', Multiple 'a' 10]

