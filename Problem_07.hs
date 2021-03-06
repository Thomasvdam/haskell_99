-- Flatten a nested list

-- New data type because haskell lists consist out of the same elements
data NestedList a = Elem a | List [NestedList a]

myFlatten :: NestedList a -> [a]
myFlatten (Elem x) = [x]
myFlatten (List []) = []
myFlatten (List (x:xs)) = myFlatten x ++ myFlatten (List xs)

main = print(myFlatten (List [Elem 1, List [Elem 2, List [Elem 3, Elem 4], Elem 5]]))

