-- Insert an element at a given position

myInsertAt :: a -> [a] -> Int -> [a]
myInsertAt a xs pos = take (pos-1) xs ++ (a : drop (pos-1) xs)

main = print $ myInsertAt 'X' "abcdefghi" 4

