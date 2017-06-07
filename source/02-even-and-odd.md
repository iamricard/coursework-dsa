# Segregate Even and Odd numbers

## Task

Given an array `A[]`, write an algorithm in pseudocode that segregates even and
odd numbers. The algorithm should put all even numbers first, and then odd
numbers.

## Implementation

```haskell
module Main where

list :: [Int]
list = [12, 34, 45, 9, 8, 90, 3, -1000, -1001]

main :: IO ()
main = print (isolate list)

isolate :: (Integral a) => [a] -> [a]
isolate xs =
  evens xs ++ odds xs -- O(2n + m)

evens :: (Integral a) => [a] -> [a] -- O(n)
evens = filter even

odds :: (Integral a) => [a] -> [a] -- O(n)
odds = filter odd
```

## Complexity analysis

For the algorithm implemented in section 2.2:

*  `filter`ing through an array for `even` or `odd` numbers has a complexity of
  $O(n)$, where $n$ is the length of the given list.
* `(++)` has a complexity of $O(m)$[^1], where $m$ is the length of the second
  list.
    * $m = length(odds(xs))$ in our case

* With this we can conclude that the complexity of this algorithm is $O(2n+m)$,
  which can be simplified to $O(n+m)$.

[^1]: https://goo.gl/yZu7Ig
