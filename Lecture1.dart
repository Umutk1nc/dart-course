
void main(List<String> args) {
  //Variable Types
  print("_________________PART 1________________________");
  print("Hello World\n");
  int yasim=20;
  num kilo=60;//any number
  var yil=2006.5.toInt();//double to int
  print("yaş:$yasim");
  print ("Kilo:$kilo");
  print("Doğum yılı:$yil");


  //Boolean
  print("_________________PART 2________________________");
  bool ogrenciMi=true;
  bool calisiyorMu=false;
  var ehliyetiVarMi=true;
  print("Öğrenci misin:$ogrenciMi");
  print("Çalışıyor musun:$calisiyorMu");
  print("Ehliyetin var mı:$ehliyetiVarMi");
  
  //String
  print("_________________PART 3________________________");
  String ad="Umut";
  String email="email1234@gmail.com";
  print("İsim:"+ad+"\nemail:"+email);
  int len=email.length;
  print("email uzunluğu:$len");


  //Applications
  //1 - Bir üçgenin tüm kenarlarını değişkende saklayın ve çevresini hesaplayıp ekrana yazdırın.
  print("_________________PART 4________________________");
  int birinciKenar=3,ikinciKenar=4,ucuncuKenar=5;
  int cevre=birinciKenar+ikinciKenar+ucuncuKenar;
  print("1. Kenar:$birinciKenar");
  print("2. Kenar:$ikinciKenar");
  print("3. Kenar:$ucuncuKenar");
  print("Üçgenin Çevresi:$cevre");
  

  //2 - Adınızı, doğum yılınızı, güncel yılı değişkenlerde saklayıp yaşınızı ekrana yazdırın.
  print("_________________PART 5________________________");
  String isim="Umut";
  int mevcutyil=2026;
  var dogumYili=2006;
  num yas=mevcutyil-dogumYili;
  print("Benim adım $isim.");
  print("Şu an $yas yaşındayım.");
}