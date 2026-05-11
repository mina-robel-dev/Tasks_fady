void main() {
  Set<String> learners = {};

  void insertStudent(String studentName) {
    learners.add(studentName);
  }

  void displayStudentsRecursive(List<String> data, [int current = 0]) {
    if (current >= data.length) return;

    print(data[current]);
    displayStudentsRecursive(data, current + 1);
  }

  insertStudent("Mina");
  insertStudent("Ali");
  insertStudent("Sara");

  print("Students using recursion:");
  displayStudentsRecursive(learners.toList());

  print("\nStudents using lambda:");
  learners.forEach((person) => print(person));

  Set<String> extraStudents = {"Mona", "Omar"};

  learners = {...learners, ...extraStudents};

  print("\nAfter merging sets:");
  learners.forEach((item) => print(item));

  Map<String, List<double>> studentMarks = {};

  void registerCourse(String studentName, String subject,
      [double mark = 0]) {
    studentMarks.putIfAbsent(studentName, () => []);
    studentMarks[studentName]!.add(mark);
  }

  double calculateAverage(String studentName) {
    var marks = studentMarks[studentName];

    if (marks == null || marks.isEmpty) {
      return 0;
    }

    double total = marks.reduce((x, y) => x + y);

    return total / marks.length;
  }

  registerCourse("Mina", "Math", 90);
  registerCourse("Mina", "Programming", 95);
  registerCourse("Ali", "Math", 80);

  print("\nAverage grade of Mina:");
  print(calculateAverage("Mina"));
}