# Zoom

Stacks can be 'zoomed in' using `@`: the stack will be treated as a program 
itself, with its own [[table_of_values]] and [[stack_pointer]].

```haskell
2 :x =

[1 2 3] @ -- This becomes the main stack, 'x' is no longer a valid identifier.
```

Exiting a stack is done with `\` and acts as halt on the main stack. 
