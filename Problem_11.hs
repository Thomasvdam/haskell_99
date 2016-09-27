-- Run length encoding without encoding single characters

import Data.List

data Encoded a = Multiple (a, Int) | Single a deriving Show

myCount :: (Eq a) => [a] -> Encoded a
myCount x
    | (length $ tail x) == 0 = Single $ head x
    | otherwise = Multiple (head x, length x)

encodeModified :: (Eq a) => [a] -> [Encoded a]
encodeModified = map myCount . group

main = print $ encodeModified "AAAABCCCCDEEEEfffFFF"

