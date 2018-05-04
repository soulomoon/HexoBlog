---
title: Quicksort VS Bubble sort
date: 2018-03-06 10:28:42
tags: algorithm

---

As everyone knows Quicksort is more efficient than Bubble sort, Quicksort takes O(log(n)) while Bubble sort takes O(n2). While you may think Quicksort is more difficult in impelementation than Bubble sort, you may be wrong.

Let us see some examples of Quicksort:

* Python:
```python
from operator import gt, le
from functools import partial
qs1 = lambda l: qs1([*filter(partial(gt, l[0]), l[1:])]) + l[0:1] + qs1([*filter(partial(le, l[0]), l[1:])]) if l else []

qs2 = lambda l: qs2([i for i in l[1:] if i <= l[0]]) + l[0:1] + qs2([i for i in l[1:] if i > l[0]]) if l else []
```



* Haskell:
```haskell
q_sort[] = []
q_sort (x:xs) = q_sort[a | a<-xs, a<=x] ++ [x] ++ q_sort[a | a<-xs, a>x]
```

then we have bubble sort:  

* python:
```python
def bb_inplace(l):
    for i in range(len(l)):
        for j in range(len(l)-1):
            if l[j] > l[j+1]:
                l[j], l[j+1] = l[j+1], l[j]
```

* haskell
```haskell
b_sort[] = []
b_sort[x] = [x]
b_sort (x:y:xs) = if x > y then [y] ++ b_sort([x]++xs) else [x] ++ b_sort([y]++xs)
bb_sort x = iterate b_sort x !! length x
```
