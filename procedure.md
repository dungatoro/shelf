# Procedures
Procedures are written inside `[]` (just like [[stacks]]). They can be called 
from an identifier or using `!`.

```haskell
1 [2 +] !
-- OUTPUT: 3
```

```haskell
[2 +] :add2 =
1 add2 add2
-- OUTPUT: 5
```

There is no difference between a procedure and a stack, in fact a stack of 
numbers such as `[1 2 3]` is really just a procedure that pushes 1, 2, then 3 to 
the program stack.
