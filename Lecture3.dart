import 'dart:io';

void main(List<String> args) {
  //Loops:For Loop
  print("===================PART 1===================");
  for(int i=0; i<=5; i++){//(create;make a condition;provide to continue)
    print("For:$i");
  }
  //Loops:While Loop
  print("===================PART 2===================");
  int counter=0;
  while(counter<=3){
    print("while:${counter++}");
  }
  //Loops:Do While Loop
  print("===================PART 3===================");
  int counter2=0;
  do{
    print("do while:${counter2++}");
  }while(counter2<5);

  //Break and Continue
  print("===================PART 4===================");
  for(int j=0; j<=5; j++){
    if(j==2){
      print("Skip");
      continue;//skip next
    }
    if (j==4){
      break;//The loop is over
    }
    print(j);
  }
  print("The loop is over");
  //Nested Loops and Labels
  print("===================PART 5===================");
  outer_loop:for(int i=1;i<=5;i++){
    inner_loop:for (int j=1;j<=5;j++){
      if(j==4){
        continue inner_loop;
      }      
      if(i==3){
        break outer_loop;
      }
      print("$i * $j = ${i*j}");
        
    }
  }
  //Input
  print("===================PART 6===================");
  print("Enter your name");
  var name=stdin.readLineSync();//default string
  print("Enter your old");
  var old=int.parse(stdin.readLineSync()!);//for integer
  print("Your name:$name");
  print("Your old:$old");

  //Application 1:Take 3 numbers and find average
  print("===================PART 7===================");
  print("First Number");
  int firstNumber=int.parse(stdin.readLineSync()!);
  print("Second Number");
  int secondNumber=int.parse(stdin.readLineSync()!);
  print("Third Number");
  int thirdNumber=int.parse(stdin.readLineSync()!);
  double average=(firstNumber+secondNumber+thirdNumber)/3;
  print("Average:$average");

  //Application 2:Take midterm grade %40 and final grade %60 and calculate general average. İf greater than 50, succesful
  print("===================PART 8===================");
  print("Midterm Grade");
  int midtermGrade=int.parse(stdin.readLineSync()!);
  print("Final Grade");
  int finalGrade=int.parse(stdin.readLineSync()!);
  double generalAverage=(40*midtermGrade+60*finalGrade)/100;
  print("Your Average:$generalAverage");
  if(generalAverage>=50){
    print("You have successfully passed the lesson.");
  }
  else{
    print("You have failed the lesson.");
  }
  //Application 3:take a number and calculate factorial with while
  print("===================PART 9===================");
  print("Enter a number:");
  int number=int.parse(stdin.readLineSync()!);
  int factorial=1;
  while(true){
    if (number==0){
      break;
    }
    else{
      factorial*=number;
      number--;
    }

  }
  print("Factorial:$factorial");
}