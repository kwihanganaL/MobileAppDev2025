void main() {
  void greets([String name = "Guest", int age = 18]) {
    print("Hello, $name! You are $age years old.");
  }

  greets(); // Hello, Guest! You are 18 years old.
  greets("Alice"); // Hello, Alice! You are 18 years old.
  greets("Bob", 30); // Hello, Bob! You are 30 years old.

  int square(int x) {
    return x * x;
  }

  print(square(4));
}
