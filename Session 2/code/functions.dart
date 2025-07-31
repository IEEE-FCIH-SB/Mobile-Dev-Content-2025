// 1. Function without return type and without parameters
import 'dart:io';

void printName() {
  print("Hello, I am a function");
}

// 2. Function with return type and without parameters
int add() {
  int a = 10;
  int b = 20;
  return a + b;
}

// 3. Function without return type and with parameters
void printAge(int age) {
  print("I am $age years old");
}

// 4. Function with return type and with parameters
int multiply(int a, int b) {
  return a * b;
}

// 5. Function with optional parameters
void printDetails(String name, [int age = 20]) {
  print("Name: $name");
  print("Age: $age");
}

// 6. Function with named REQUIRED parameters
void printDetails2({required name, required int age}) {
  print("Name: $name");
  print("Age: $age");
}

// 7. Function with optional and named parameters
void printDetails3(String name, {int age = 20}) {
  print("Name: $name");
  print("Age: $age");
}

void main() {
  // Function call
  printName();
  print(add());
  printAge(25);
  print(multiply(5, 5));
  printDetails("Alshimaa", 20);
  printDetails2(name: "Alshimaa", age: 20);
  printDetails3("Alshimaa", age: 20);
  printDetails3("Alshimaa");

  // Anonymous Function
  var add2 = (int a, int b) {
    return a + b;
  };
  print(add2(10, 20));

  //ERROR HANDLING
  int operand1 = int.parse(stdin.readLineSync()!);
  int operand2 = int.parse(stdin.readLineSync()!);
  try {
    int result = operand1 ~/ operand2;
    print("The result is $result");
  } catch (e) {
    print("The exception thrown is $e");
  } finally {
    print("This is FINALLY block and is always executed");
  }
}
