void main() {
  print("\n");
  print("REGULAR FUNCTIONS");

  void greetUser() {
    print("Hello, Welcome To Dart Programming");
  }

  greetUser();

  print("\n");
  print("FUNCTIONS WITH PARAMETERS");

  void user(String name) {
    print("hello!, $name");
  }

  user("Patience");

  print("\n");
  print(" ARROW FUNCTIONS");

  int num1 = 20;
  int num2 = 10;

  //here is example of finding sum,division,difference and product of two numbers by using void
  // Arrow functions with void return type: they print results directly

  void add(int n1, int n2) => print("The sum is ${n1 + n2}");
  void sub(int n1, int n2) => print("The diff is ${n1 - n2}");
  void mul(int n1, int n2) => print("The mul is ${n1 * n2}");
  void div(int n1, int n2) => print("The div is ${n1 / n2}");

  // Function calls
  add(num1, num2);
  sub(num1, num2);
  mul(num1, num2);
  div(num1, num2);

  print("\n");
  print(" FUNCTIONS WITH OPTIONAL PARAMETERS");

  print("\n");

  //in functions with optinal parameters with have two ways

  //first way is by using NAMED OPTIONAL PARAMETERS where we declare it by using CURLY BRACES and you
  //can specify it in any order when calling it

  print("NAMED OPTIONAL PARAMETERS");

  void greet({String name = "Guest", int age = 18}) {
    print("Hello, $name! You are $age years old.");
  }

  greet(name: "Lullaby"); // Hello, Alice! You are 18 years old.
  greet(name: "Igihozo", age: 25);
  greet(); // Hello, Guest! You are 18 years old.
  // Hello, Bob! You are 25 years old

  //second way is by using POSITIONAL OPTIONAL PARAMETERS where we declare it by using SQUARE BRACKETS and
  //you must be pass them in the order they are defined

  print("\n");

  void greets([String name = "Guest", int age = 18]) {
    print("Hello, $name! You are $age years old.");
  }

  greets(); // Hello, Guest! You are 18 years old.
  greets("Lullaby"); // Hello, Alice! You are 18 years old.
  greets(
    "Igihozo",
    30,
  ); // Hello, Bob! You are 30 years old. print("POSITIONAL OPTIONAL PARAMETERS");

  print("\n");
  print("TYPES OF FUNCTIONS ");

  print("\n");
  print("NAMED PAREAMETRES");

  // Function with named parameters
  void printUserInfo({String name = "Unknown", int age = 0}) {
    print("Name: $name, Age: $age");
  }

  printUserInfo();

  print("\n");
  print("RETURN VALUES");

  // Function that returns the sum of two numbers
  int addition(int a, int b) {
    return a + b;
  }

  int result = addition(10, 5);
  print("Result: $result"); // Output: Result: 15

  print("\n");
  print("IMPLICIT RETURN TYPE");

  // Dart will guess the return type (in this case, int)
  getValue() {
    return 100;
  }

  print(getValue()); // Output: 100

  print("\n");
  print("NO RETURN VALUES(VOID)");
  // Function that returns nothing (void)
  void display(String message) {
    print("Message: $message");
  }

  display("This function returns nothing.");

  print("\n");
  print("HIGHER-ORDER FUNCTIONS");

  //These are functions that take other functions as parameters or return them.
  // Function that takes another function as an argument
  // A function that takes another function as a parameter
  void performOperation(int a, int b, Function operation) {
    print("Result: ${operation(a, b)}");
  }

  int multiply(int x, int y) {
    return x * y;
  }

  performOperation(4, 5, multiply); // Output: Result: 20

  print("\n");
  print("LEXICAL CLOSURES");

  //A closure is a function that captures variables from its surrounding scope.

  Function makeMultiplier(int multiplier) {
    // 'factor' is captured by the returned function
    return (int value) => value * multiplier;
  }

  var triple = makeMultiplier(3);
  print(triple(5)); // Output: 15

  print("\n");
  print("GENERETAORS");

  //Generators in Dart are special functions that allow you to generate a sequence of values lazily.

  //Instead of returning all results at once (like a List), generators return values one at a time, as needed.
  //There are two types:
  //sync* → returns an Iterable (synchronous generator)
  //async* → returns a Stream (asynchronous generator)
  //Functions that lazily generate a sequence using sync* or async*.

  // Generator using sync*

  Iterable<int> countToThree() sync* {
    yield 1; //yield is like return but it pauses function and remembers the position , when the function is
    //called again it resumes where it has stopped.
    yield 2;
    yield 3;
  }

  for (var num in countToThree()) {
    print(num);
  }
}
