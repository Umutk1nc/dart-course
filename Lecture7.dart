import 'dart:io';

void main(List<String> args) {
  //Object Oriented Programming: Class and Object
  print("===================PART 1===================");
  Student student=Student();
  student.SetStudent();
  student.GetStudent();

  //Object Oriented Programming: Constructor and This
  print("===================PART 2===================");
  Car honda=Car("Honda",2020);
  Car bmw=Car("BMW",2026);
  print("First Car:");
  honda.ShowInfo();
  print("\nSecond Car:");
  bmw.ShowInfo();
}

class Student{
  String name="";
  int no=0;
  bool isGraduated=false;
  void SetStudent(){
    print("Name:");
    name=stdin.readLineSync()!;
    print("Student Number:");
    no=int.parse(stdin.readLineSync()!);
    print("Have you graduated? (true/false):");
    isGraduated=bool.parse(stdin.readLineSync()!);
  }
  void GetStudent(){
    print("Your name:${name}");
    print("Your student number:${no}");
    print("Graduated:${isGraduated}");
  }
}

class Car{
  String? branch;//will be this
  int? modelYear;//will be this

  Car(String branch,int modelYear){
    //Constructor Method
    this.branch=branch;
    this.modelYear=modelYear;
    print("Constructor Method Was Started");
  }

  void ShowInfo(){
    print("Model Year:$modelYear");
    print("Branch of car:$branch");
  }
}