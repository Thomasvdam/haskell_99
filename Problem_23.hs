-- Extract N randomly selected elements from a list (duplicate allowed)
import System.Random

-- Use the returns to force IO
myRandSelect :: [a] -> Int -> IO [a]
myRandSelect _ 0 = return []
myRandSelect [] _ = return []
myRandSelect xs n
    | n < 0 = return []
    | otherwise = do
        -- Get the inital rng generator seed
        gen <- getStdGen
        -- List comprehension producing an infinite list with randomly chosen elements
        -- so we take only the first N. Hooray for lazy evaluation
        -- randomRs generates an infinite list of random values, so only need to seed once
        return $ take n [ xs !! x | x <- randomRs (0, (length xs)-1) gen]

main = do
    rand <- myRandSelect ['a'..'z'] 6
    print rand

