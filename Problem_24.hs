-- Draw N different random numbers from the set 1..M
import System.Random

myLotto :: Int -> Int -> IO [Int]
myLotto 0 _ = return []
myLotto n m
    | n > m = error "Can't select more numbers than there are available"
    | m < 1 = error "Can't create a range from 1 to lower"
    | otherwise = myLotto' n [1..m] where
        -- need to define the base case since we're doing this imperatively
        myLotto' 0 _ = return []
        myLotto' n' xs = do
            -- get a random int
            r <- randomRIO (0, (length xs)-1)
            let remain = take r xs ++ drop (r+1) xs
            -- recursively get a new random element, works because it is lazy
            rest <- myLotto' (n'-1) remain
            return $ (xs!!r) : rest

main = do
    rand <- myLotto 5 64
    print rand

