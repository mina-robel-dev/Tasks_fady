class Human {
  String fullName;
  int _years;

  Human(this.fullName, this._years);

  int get years => _years;

  set years(int newValue) {
    if (newValue > 0) {
      _years = newValue;
    } else {
      print("Invalid age value");
    }
  }

  static String collegeName = "Sohag University";
}

class Worker extends Human {
  double income;

  Worker(String fullName, int years, this.income)
      : super(fullName, years);

  void displayData() {
    print("University: ${Human.collegeName}");
    print("Name: $fullName");
    print("Age: $years");
    print("Salary: $income");
  }
}

abstract class Talents {
  void coding();
  void teamwork();
}

class Programmer extends Worker implements Talents {
  Programmer(String fullName, int years, double income)
      : super(fullName, years, income);

  @override
  void coding() {
    print("Coding skill: Flutter developer");
  }

  @override
  void teamwork() {
    print("Teamwork skill: Excellent communication");
  }
}

void main() {
  Programmer programmer = Programmer("Mina", 23, 8000);

  programmer.displayData();
  programmer.coding();
  programmer.teamwork();
}