/// access modifier
/// public, private, protected

class player {
  String _name;
  int _age;
  player(this._name, this._age);

//getter and setter

 int get_age() {
    return _age;
  }

  void set_age(int newage) {
     if (newage < 18) {
       print("under 18 not allowed");
     } else {
       _age = newage;
     }
   }

   String get_name() {
     return _name;
   }

   void set_name(String newname) {
     _name = newname;
   }
 }

class employee {
  double _salary;

  employee(this._salary);

  //getter and setter

  double get_salary() {
    return _salary;
  }

  void set_salary(double newsalary) {
    if (newsalary < 10000) {
      print("salary should be more than 10000");
    } else {
      _salary = newsalary;
    }
  }

  void work() {
    print("employee is working");
  }
}
 
 // Inheritance
class manager extends employee {
  String? department;
  manager(this.department, super.salary);
 // overriding (dynamic polymorphism)
  @override
  void work() {
    print("manager is working");
  }
}

void main() {
  manager m = manager("HR", 20000);
  m.work();
}

//overloading (static polymorphism)

int add(int a, int b, [int c = 0]) {
  return a + b + c;
}
