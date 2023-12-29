# Higher Order 

A [[procedure]] is an item on the stack, and can naturally be executed within 
other procedures. This is a higher order procedure and similiar to higher order 
functions present in functional languages like haskell (e.g. map, reduce, scan).

```haskell #reduce
-- [stack] [proc] reduce

[& :f & := & -- this joins the declaration of a procedure to the stack as f

  @ -- this [[zoom]]s in on the stack and evaluates everything as it is.

  [P 1 >] :f while -- execute f until there is only one item in the stack

  \ -- return to the main stack

] :reduce =
```

Without comments:

```haskell
[& :f & := & 
  @ [P 1 >] :f while \
] :reduce =
```
