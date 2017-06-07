module Main where

main :: IO ()
main = print (parking 5)

parking :: Int -> Int
parking 0 = 1
parking 1 = 1
parking 2 = 1
parking 3 = 2
parking n = parking (n - 1) + parking (n - 3)
