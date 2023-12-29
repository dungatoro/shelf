# Glassbox

Glassbox is an [[open_interpreter]].

```python main.py
class Stack(object):
    def __init__(self, *items):
        self.s = list(items)
        self.vars = {
            "P": Stack(0)
       }

    def eval(self):
        pass

    def push(self, item):
        p = self.vars["P"].eval()
        self.s[p+1] = item
        self.vars["P"] = p+1

    def pop(self):
        p = self.vars["P"].eval() 
        self.vars["P"] = p-1
        return self.s[p]
```
