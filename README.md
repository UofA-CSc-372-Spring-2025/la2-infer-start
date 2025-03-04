# la2-typeinfer

Answer the below questions and submit this edited file to Gradescope along with la2-infer.pl.

### fresh prolog variables [2 pts]

Do a trace on some of the lambda test cases in la2-test.pl.  How does the `fresh_type_var` predicate work?

### why no polymorphism? [2 pts]

Do a trace of the following query:
```
infer(let(f,lambda(x, sml_var(x)),tuple(apply(sml_var(f),int(3)),apply(sml_var(f),bool))),T).
```
Why does it fail?

### Explain a trace [4 points]

Trace `infer(lambda(f, lambda(x, apply(sml_var(f), apply(sml_var(f), sml_var(x))))),T).`.
At which point in the trace does the type of `f` go from being `T1 -> T2` to being `T -> T`?

Explain why that happens.