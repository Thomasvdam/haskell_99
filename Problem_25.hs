-- Generate a random permutation of a list
import System.Random

myMutate :: [a] -> IO [a]
myMutate [] = return []
myMutate xs = do
    r <- randomRIO (0, (length xs)-1)
    let remain = take r xs ++ drop (r+1) xs
    rest <- myMutate remain
    return $ (xs!!r) : rest

main = do
    rand <- myMutate "1234567890"
    print rand

