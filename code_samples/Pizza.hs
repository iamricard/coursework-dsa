module Main where

main :: IO ()
main = putStrLn $ "After 4 cuts we have " ++ show (pizza 4) ++ " slices."

pizza :: Int -> Int
pizza 0 = 1
pizza 1 = 2
pizza n = 2 * pizza (n - 1)
