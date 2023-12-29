# Metaprogramming

Like lisp, lists and function calls are not separate but different applications 
of the same thing; here with [[stacks]] and [[procedure]] calls instead. This is 
made possible through metaprogramming (the ability to treat code as data).

Unlike in lisp, these calls are not evaluated by default but instead treat as a 
new stack.

```haskell
[1 2 3] -- creates a stack

! -- evaluates the stack
  --   * Here this means PUSH 1, PUSH 2, PUSH 3
```
