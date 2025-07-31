//Class
class Person {
  late String name;
  late int age;

  //Constructors

  //default constructor
  Person() {
    print('Constructor');
  }

  //parameterized named constructor
  Person.withparameters(this.name, this.age);

  //Method
  void showOutput() {
    print(name);
    print(age);
  }
}

void main() {
  //Objects
  Person person1 = Person();
  Person person2 = Person.withparameters('Max', 30);
  person1.showOutput();
  person2.showOutput();
}
