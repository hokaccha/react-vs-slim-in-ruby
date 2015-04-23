# React vs Slim vs Haml

```
$ ruby benchmark.rb
Calculating -------------------------------------
                haml   847.000  i/100ms
                slim     5.062k i/100ms
                 erb     2.008k i/100ms
               react   967.000  i/100ms
-------------------------------------------------
                haml      8.628k (±14.7%) i/s -     42.350k
                slim     53.269k (± 5.1%) i/s -    268.286k
                 erb     19.588k (±10.5%) i/s -     98.392k
               react      9.717k (±13.0%) i/s -     48.350k

Comparison:
                slim:    53269.2 i/s
                 erb:    19588.4 i/s - 2.72x slower
               react:     9717.0 i/s - 5.48x slower
                haml:     8628.3 i/s - 6.17x slower
```
