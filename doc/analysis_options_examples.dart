/// Contains
library pedantic_pschiffmann.doc.analysis_options_examples;

//
// avoid_annotating_with_dynamic
//

dynamic avoidAnnotatingWithDynamic(dynamic x) => x;

//
// avoid_returning_null_for_void
//

class AvoidReturningNullForVoid {
  String s;
  void clearS() => s = null;
}

//
// literal_only_boolean_expressions
//

void literalOnlyBooleanExpressions() {
  while (true) {
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

//
// type_annotate_public_apis
//

const typeAnnotatePublicApis = 'type_annotate_public_apis';
