# Segregate Even and Odd numbers

## Task

Given an array `A[]`, write an algorithm in pseudocode that segregates even and
odd numbers. The algorithm should put all even numbers first, and then odd
numbers.

## Implementation[^2]

\inputminted[firstline=9,lastline=17]{haskell}{code_samples/Isolate.hs}

## Complexity analysis

For the algorithm implemented in section 2.2:

*  `filter`ing through an array for `even` or `odd` numbers has a complexity of
  $O(n)$, where $n$ is the length of the given list.
* `(++)` has a complexity of $O(m)$[^3], where $m$ is the length of the second
  list.
    * $m = length(odds(xs))$ in our case

* With this we can conclude that the complexity of this algorithm is $O(2n+m)$,
  which can be simplified to $O(n+m)$.

[^2]: Full program sample can be found on Appendix B
[^3]: https://goo.gl/yZu7Ig
