module Main where

list :: [Int]
list = [12, 34, 45, 9, 8, 90, 3, -1000, -1001]

main :: IO ()
main = print (isolate list)

isolate :: (Integral a) => [a] -> [a]
isolate xs =
  evens xs ++ odds xs

evens :: (Integral a) => [a] -> [a]
evens = filter even

odds :: (Integral a) => [a] -> [a]
odds = filter odd
