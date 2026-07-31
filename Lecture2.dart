void main(List<String> args) {
  
  //Conditional Statements
  print("===================PART 1===================");
  int firstNumber=10,secondNumber=4;
  if (firstNumber>secondNumber){
    print("$firstNumber sayısı $secondNumber sayısından büyüktür.");
  }
  else if(firstNumber==secondNumber){
    print("$firstNumber sayısı $secondNumber sayısına eşittir.");
  }
  else{
    print("$secondNumber sayısı $firstNumber sayısından büyüktür.");
  }

  
  //Short if
  print("===================PART 2===================");
  int smallNumber=0;
  firstNumber<secondNumber ? smallNumber=firstNumber:smallNumber=secondNumber;
  print("Küçük Sayı:$smallNumber");
  
  String name1="Umut",name2="Umut";
  print("Birinci isim:"+name1+"\nİkinci isim:"+name2);
  name1==name2? print("İsimler aynıdır."):print("İsimler aynı değildir.");

  //Switch Case
  print("===================PART 3===================");
  int note=55;
  print("Notunuz:$note");
  String grade;
  switch (note){
    case>=90:
      grade="AA";
      break;
    case>=80:
      grade="BA";
      break;
    case>=70:
      grade="BB";
      break;
    case>=60:
      grade="CB";
      break;
    case>=50:
      grade="CC";
      break;
    default:
      grade="FF";
  }
  print("Harf Notunuz: $grade");

  //Arithmetical Operators
  print("===================PART 4===================");
  print("$firstNumber ve $secondNumber sayılarının toplamı:${firstNumber+secondNumber}");
  print("$firstNumber ve $secondNumber sayılarının farkı:${firstNumber-secondNumber}");
  print("$firstNumber ve $secondNumber sayılarının çarpımı:${firstNumber*secondNumber}");
  print("$firstNumber ve $secondNumber sayılarının bölümü:${firstNumber/secondNumber}");
  print("$firstNumber ve $secondNumber sayılarının modu:${firstNumber%secondNumber}");
  
  //Comparison Operators
  print("===================PART 5===================");
  int thirdNumber=10;
  print("$firstNumber>$secondNumber:${firstNumber>secondNumber}");//Greater
  print("$thirdNumber<$secondNumber:${thirdNumber<secondNumber}");//Smaller
  print("$secondNumber>=$thirdNumber:${secondNumber>=thirdNumber}");//Greater and equal
  print("$firstNumber<=$thirdNumber:${firstNumber<=thirdNumber}");//Smaller and equal
  print("$firstNumber!=$secondNumber:${firstNumber!=secondNumber}");//Not equal
  print("$firstNumber==$thirdNumber:${firstNumber==thirdNumber}");//Equal

  //Logic Operators
  print("===================PART 6===================");
  bool ogrenciMi=true;
  if(firstNumber>5 && firstNumber<20){
    print("$firstNumber sayısı 5'den büyük 20'den küçüktür");
  }
  
  else{
    print("$firstNumber sayısı 5'den büyük 20'den küçük değildir.");
  }

  if (secondNumber<0 || secondNumber>3){
  print("$secondNumber sayısı 0'dan küçük ya da 3'den büyüktür.");
  }
  else{
    print("$secondNumber sayısı 0'dan küçük ya da 3'den büyük değildir.");
  }
  if(ogrenciMi){
    print("Ögrenci");
  }
  print("===================PART 7===================");
  print("First use later increase, firstNumber++:${firstNumber++}");//increase after use, output:10, firstNumber:11
  print("First increase later use, ++firstNumber:${++firstNumber}");//use after increase, output 12, firstNumber:12

}