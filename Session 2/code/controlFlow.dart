void main() {
  var name = 'John';
  var birthYear = 2000;
  var currentYear = 2025;

  var age = currentYear - birthYear;
  var isAdult = age >= 18 ? 'Yes' : 'No';

  print("Hello, $name. You are $age years old. Adult: $isAdult");
}
