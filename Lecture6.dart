import 'dart:io';
import 'dart:math';

void main(List<String> args) {
  //Applications 1: Create 10 random number between 0-100 and keep a list
  print("===================PART 1===================");
  int randomNumber;
  List<int> randomList=[];
  for (int i=0;i<10;i++){
    randomNumber=Random().nextInt(101);//0-100
    randomList.add(randomNumber);
  }
  print(randomList);
  
  //Applications 2:Create keys string and values dynamic Map.
  print("===================PART 2===================");
  var info=Map<String, dynamic>();
  info["core"]=8;
  info["ram"]=32;
  info["have_ssd"]=true;
  info["gpu"]="RTX 4050";
  print(info);

  //Applications 3:Take a number from user and keep a list. 
  //If you enter negative number,don't add the list
  //If number is -1,the program must be finish and calculate the average
  print("===================PART 3===================");
  List<int> numbers=[];
  int total=0;
  while(true){
    print("Enter number to add\nPress -1 to quit");
    int number=int.parse(stdin.readLineSync()!);
    if (number==-1){
      break;
    }
    if(number<0){
      print("The number must be positive");
      continue;
    }
    else{
      numbers.add(number);
      total+=number;
    };
  }

  if (numbers.isNotEmpty) {
    print("Average:${total / numbers.length}");
  } 
  else {
  print("No valid numbers entered.");
  }

  //Applications 4:Create random numbers 100 times number between 0-100
  //And print every value and how much
  print("===================PART 4===================");
  List <int> secondRandomList=[];
  int random;
  for (int i=0;i<100;i++){
    random=Random().nextInt(101);//0-100
    secondRandomList.add(random);
  }

  Map<int,int>counterMap={};

  for(int num in secondRandomList){
    if(counterMap.containsKey(num)){
      var counter =counterMap[num];
      counter=counter!+1;
      counterMap[num]=counter;
    }
    else{
      counterMap[num]=1;
    }
  }
  for(var entry in counterMap.entries){
    if(entry.value>1){
      print(entry);
    }
  }
}