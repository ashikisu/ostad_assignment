abstract class Role {
  void displayRole();
}

class Person implements Role{
  String? name;
  int? age;
  String? address;
  @override
  void displayRole() {

  }
}

class Student extends Person {
  int? studentID;
  double? grade;
  List<double>? courseScores;

  @override
  void displayRole() {
    print("Role: Student");
  }
  String averageScore() {
    double totalScores = 0;
    for (double scores in courseScores!) {
      totalScores =totalScores+scores;
    }
    return (totalScores / courseScores!.length).toStringAsFixed(2);
  }

}

class Teacher extends Person {
  int? teacherID;
  List<String>? coursesTaught;

  @override
  void displayRole() {
    print("Role: Teacher");
  }

  void displayCourses() {
    for (String course in coursesTaught!) {

      print("-$course");
    }
  }


}

void main() {
  Student student = Student();
  student.name = "Ashikul Islam";
  student.age = 20;
  student.address = "123 Main Street";
  student.courseScores = [90, 85, 82];
  student.displayRole();
  print("Name:${student.name}");
  print("Age:${student.age}");
  print("Adress:${student.address}");
  print("Average Score:${student.averageScore()}");

  print("    "); print("    ");


  Teacher teacher = Teacher();
  teacher.name = "Mr. Smith";
  teacher.age = 35;
  teacher.address = "456 Oak st.";
  teacher.coursesTaught = ['Math', 'English', 'Bangla'];
  teacher.displayRole();
  print("Name:${teacher.name}");
  print("Age:${teacher.age}");
  print("Address:${teacher.address}");
  print("Course Taught:");
  teacher.displayCourses();


}