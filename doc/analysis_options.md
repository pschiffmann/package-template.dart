# analysis_options.yaml

## lint rules

### always_put_control_body_on_new_line

https://github.com/dart-lang/pedantic#unused-lints
> `always_put_control_body_on_new_line` violates Effective Dart "DO format your code using dartfmt".

### always_specify_types

https://github.com/dart-lang/pedantic#unused-lints
> `always_specify_types` violates Effective Dart "AVOID type annotating initialized local variables" and others.

### avoid_annotating_with_dynamic

`dynamic` should only be used if a type can't be expressed with the Dart type system.
These cases must be handled with additional care because the analyzer can only provide limited help, and the explicit `dynamic` keyword can help to remind a programmer of that fact.

### avoid_as

https://github.com/dart-lang/pedantic#unused-lints
> `avoid_as` does not reflect standard usage.

### avoid_field_initializers_in_const_classes

Not enforced until Angular change detection handles invariant getters.

https://github.com/dart-lang/angular/blob/master/doc/effective/change-detection.md#do-use-final-fields-where-possible

### avoid_returning_null_for_void

Lints `void f() => m = null;`.

### literal_only_boolean_expressions

This lint is triggered by `while (true) { ... }`, which is legitimate in certain situations.
Except for that line, I personally have never seen it.

### parameter_assignments

I believe reusing a parameter as a read/write variable is a legitimate use.
Instead, there should be a lint `prefer_final_parameters` ...

### prefer_bool_in_asserts

Deprecated.

### public_member_api_docs

Certain public members are self-explanatory (think of `class Person { String email; }`).
Whether documentation is required should be decided during a code review.

### sort_constructors_first

I like to keep `static` fields and methods separated from the remaining code of a class, and I find the constructor makes for a good separator between the two.
However, this lint complains if a static member appears before the constructor.
