

class AgeCalculator {
  static var age;
  cacl(int b){
    print ('Enter Your Birth Year');
    int birthYear = b;
     age = DateTime.now().year - birthYear;
    print ('Your Age Is $age Years Old');
  }
}