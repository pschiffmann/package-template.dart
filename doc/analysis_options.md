# analysis_options.yaml

## strong mode

### implicit-dynamic

Enabling this option means that one has to explicitly specify collection literals as `dynamic` even if it is immediately passed to a function that expects a dynamic collection parameter.

## errors

### uri_has_not_been_generated

Angular requires you to import generated files that are generated to [cache](https://github.com/dart-lang/build/blob/master/docs/build_yaml_format.md#buildto):

https://webdev.dartlang.org/angular/tutorial/toh-pt5

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

### avoid_catches_without_on_clauses

Catching _anything_ can be useful to restore a partially modified object back to a defined state.
Then, the caught object can be `rethrow`n.

### avoid_field_initializers_in_const_classes

Not enforced until Angular change detection handles invariant getters.

https://github.com/dart-lang/angular/blob/master/doc/effective/change-detection.md#do-use-final-fields-where-possible

### avoid_returning_null_for_void

Lints `void f() => m = null;`.

### literal_only_boolean_expressions

This lint is triggered by `while (true) { ... }`, which is legitimate in certain situations.
Except for that line, I personally have never seen it.

### one_member_abstracts

Lints classes that are intended as actual interfaces.

### parameter_assignments

I believe reusing a parameter as a read/write variable is a legitimate use.
Instead, there should be a lint `prefer_final_parameters` ...

### prefer_bool_in_asserts

Deprecated.

### prefer_const_constructors
### prefer_const_declarations
### prefer_const_literals_to_create_immutables

Now that Dart has optional `new`/`const`, declaring a variable as `const` implicitly calls the const constructor.
But using const is discouraged for local variables, because their allocation slows down the startup time, and they never get freed.

### prefer_interpolation_to_compose_strings

Unreadable for long method chains or ternary operators.

### prefer_mixin

Lints class declarations from dependency packages.

### public_member_api_docs

Certain public members are self-explanatory (think of `class Person { String email; }`).
Whether documentation is required should be decided during a code review.

### sort_constructors_first

I like to keep `static` fields and methods separated from the remaining code of a class, and I find the constructor makes for a good separator between the two.
However, this lint complains if a static member appears before the constructor.

### type_annotate_public_apis

Lints `final n = 42;`, but type inference makes an explicit type annotation redundant.
(dartdoc is able to infer the type of `n` as well.)
