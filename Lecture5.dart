import 'dart:io';

void main(List<String> args) {
  //Constant List
  print("===================PART 1===================");
  List<int> numbers=List.filled(5,1);//to fill
  numbers[4]=5;//fourth index changes
  print("Numbers:$numbers");
  List<String> names=["Umut","Kıvanç","Ali","Murat"];
  print("Names$names");
  print("Index 0:${names[0]}");
  
  //Find max and min in list
  print("===================PART 2===================");
  List<int> numbersList=[1,5,6,0,3];
  int max,min;
  (max,min)=MaxMin(numbersList);
  print("List:$numbersList:");
  print("Min:$min");
  print("Max:$max");

  //Dynamic List
  print("===================PART 3===================");
  List<int> dynamicList = List.empty(growable: true);
  List <int> dynamicList2=List.empty(growable: true);
  List <int> dynamicList3=[];
  dynamicList.addAll([1,19,6,3,5]);//[1,19,6,3,5]
  dynamicList.remove(19);//to delete value:[1,6,3,5]
  dynamicList.removeAt(2);//to delete at index:[1,6,5]
  dynamicList2.addAll([3,8]);//to add list:[3,8]
  dynamicList2.insert(2, 2);//to add value that index:[3,8,2]
  dynamicList3.add(4);//[4]
  print("First Dynamic List:$dynamicList");
  print("Second Dynamic List:$dynamicList2");
  print("Third Dynamic List:$dynamicList3");

  //Other List Methods
  print("===================PART 4===================");
  List <int> myList=[1,2,3,4,5];
  print("List:$myList");
  myList.removeLast();//[1,2,3,4]
  print("removeLast:$myList");
  int index=myList.indexOf(4);
  print("Index of 4 is $index");//[1,2,3,4]>>3

  print("Before Shuffle:$myList");
  myList.shuffle();
  print("After Shuffle:$myList");

  //To Search value in list
  print("===================PART 5===================");
  print("What number will you search:");
  int searchingValue=int.parse(stdin.readLineSync()!);
  bool result=myList.contains(searchingValue);
  print("Is list contains $searchingValue in $myList:$result");

  //Set Structure
  print("===================PART 6===================");
  Set <int> oddNumbers=Set();//Set defining
  oddNumbers.addAll([1,5,3,3,3,5,7,7,5,5,5,5,9,3,1]);//values unique
  var evenNumbers=<int>{};//Set defining
  print("Set:$oddNumbers");
  print("Set:$evenNumbers");

  //Map Structure
  print("===================PART 7===================");
  Map<String,String> licencePlate={"Adana":"01","İstanbul":"34","Ankara":"06","İzmir":"35","Bursa":"16","Kocaeli":"41"};
  print("Licence plates:$licencePlate");
  var info=<String,dynamic>{
    "name":"Umut",
    "age":20,
    "single":true,
  };
  print("Personal information:$info");
  print("\nKeys");
  for (var key in info.keys){
    print("Key:$key");
  }
  print("\nValues");
  for(var value in info.values){
    print("Value:$value");
  }
  print("\nEntries");
    for(var entry in info.entries){
    print(entry);
  }
}

(int,int) MaxMin(List<int> numbersList){
  int max=numbersList[0],min=numbersList[0];
  for(int i=1;i<numbersList.length;i++){
    if(numbersList[i]>max){
      max=numbersList[i];
    }
    if(numbersList[i]<min){
      min=numbersList[i];
    }
  }
  return (max,min);
}