// dart 02_built_in_data_types.dart
// dart 02_built_in_data_types.dart 1 2
void main(List<String> arguments) {

  var nil_1;
  int nil_2;
	// Numbers: int
	int score = 23;
	var count = 23;     // It is inferred as integer automatically by compiler
	int hexValue = 0xEADEBAEE;

	// Numbers: double
	double percentage = 93.4;
	var percent = 82.533;
	double exponents = 1.42e5; 

	// Strings
	String name = "Henry";
	var company = "Google";

	// Boolean
	bool isValid = true;
	var isAlive = false;

  print(nil_1);
  print(nil_2);
	print(score);
	print(exponents);
  print(arguments);
	// NOTE: All data types in Dart are Objects.
	// Therefore, their initial value is by default 'null'
}