/// Contains
library pedantic_pschiffmann.doc.analysis_options_examples;

//
// avoid_annotating_with_dynamic
//

dynamic avoidAnnotatingWithDynamic(dynamic x) => x;

//
// literal_only_boolean_expressions
//

void literalOnlyBooleanExpressions() {
  while(true) {
    break;
  }
}

//
// sort_constructors_first
//

class SortConstructorsFirst {
  static void f() {}
  SortConstructorsFirst();
}
