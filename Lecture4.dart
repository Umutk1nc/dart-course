import 'dart:io';
void main(List<String> args) {
  //Functions
  print("===================PART 1===================");
  print("First Number:");
  int firstNumber=int.parse(stdin.readLineSync()!);
  print("Second Number:");
  int secondNumber=int.parse(stdin.readLineSync()!);
  ShowResults(firstNumber,secondNumber);
  //Function Applications 1:Even and odd numbers of total
  print("===================PART 2===================");
  print("Last number=10>>Even Numbers Total:${ShowNumbers(10,true)}");//Even number until 10
  print("Odd Number=5>>Odd Numbers Total:${ShowNumbers(5,false)}");//Odd number until 5
  

  //Function Applications 2:Area of Circle
  print("===================PART 3===================");
  double pi=3.14;
  print("What is radius:");
  int radius=int.parse(stdin.readLineSync()!);
  double area=CalculateAreaOfCircle(radius,pi);
  print("Area:$area");
}

int Summation(int firstNumber,int secondNumber){
  return firstNumber+secondNumber;
}
int Subtraction(int firstNumber,int secondNumber){
  return firstNumber-secondNumber;
}
int Multipication(int firstNumber,int secondNumber){
  return firstNumber*secondNumber;
}
double Division(int firstNumber,int secondNumber){
  return firstNumber/secondNumber;
}
void ShowResults(int firstNumber,int secondNumber){
  print("$firstNumber+$secondNumber=${Summation(firstNumber,secondNumber)}");
  print("$firstNumber-$secondNumber=${Subtraction(firstNumber,secondNumber)}");
  print("$firstNumber*$secondNumber=${Multipication(firstNumber,secondNumber)}");
  print("$firstNumber/$secondNumber=${Division(firstNumber,secondNumber)}");

}
bool IsEven(int number){
  if(number%2==0){
    return true;
  }
  return false;
}
int ShowNumbers(int lastNumber,bool condition){
  int sum=0;
  for(int i=0;i<=lastNumber;i++){
    if (IsEven(i)==condition){
      sum+=i;
    }
  }
  return sum;

}
double CalculateAreaOfCircle(int radius,double pi){
  return pi*radius*radius;
}