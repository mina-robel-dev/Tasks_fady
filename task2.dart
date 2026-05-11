import 'dart:io';

void main() {
  List<String> studentNames = [];
  List<List<double>> marksList = [];

  print("Enter total number of students:");
  int totalStudents = int.parse(stdin.readLineSync()!);

  for (int x = 0; x < totalStudents; x++) {
    print("Enter student name:");
    String studentName = stdin.readLineSync()!;
    studentNames.add(studentName);

    print("Enter total subjects:");
    int totalSubjects = int.parse(stdin.readLineSync()!);

    List<double> marks = [];

    for (int y = 0; y < totalSubjects; y++) {
      print("Enter subject mark:");
      double mark = double.parse(stdin.readLineSync()!);
      marks.add(mark);
    }

    marksList.add(marks);
  }

  while (true) {
    print("\n1- Display Results");
    print("2- Find Student");
    print("3- Exit Program");

    print("Enter your choice:");
    int option = int.parse(stdin.readLineSync()!);

    if (option == 1) {
      for (int i = 0; i < studentNames.length; i++) {
        double total = 0;

        for (double value in marksList[i]) {
          total += value;
        }

        double average = total / marksList[i].length;

        String finalGrade;

        if (average >= 90) {
          finalGrade = "A";
        } else if (average >= 75) {
          finalGrade = "B";
        } else if (average >= 60) {
          finalGrade = "C";
        } else {
          finalGrade = "F";
        }

        print(
            "${studentNames[i]} - Average: ${average.toStringAsFixed(2)} - Grade: $finalGrade");
      }
    }

    else if (option == 2) {
      print("Enter name to search:");
      String wantedName = stdin.readLineSync()!;

      int position = studentNames.indexOf(wantedName);

      if (position == -1) {
        print("No student found");
      } else {
        double total = 0;

        for (double value in marksList[position]) {
          total += value;
        }

        double average = total / marksList[position].length;

        print(
            "${studentNames[position]} Average: ${average.toStringAsFixed(1)}");
      }
    }

    else if (option == 3) {
      print("Program closed");
      break;
    }
  }
}