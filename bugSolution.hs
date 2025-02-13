The solution involves ensuring the function `myFunc` is in scope.  This is done by either defining `myFunc` before its use, or by importing the module where `myFunc` is defined.

```haskell
myFunc :: Int -> Int
myFunc x = x * 2

main = do
  let x = myFunc 5
  print x

```

Alternatively, if `myFunc` is in a separate module (let's call it `MyModule`):

```haskell
import MyModule

main = do
  let x = myFunc 5
  print x

```

In `MyModule.hs`:

```haskell
myFunc :: Int -> Int
myFunc x = x * 2
```