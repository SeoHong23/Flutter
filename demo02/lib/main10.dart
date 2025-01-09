void main() {
  //Dog d1 = new Dog(); // 인스턴스화 되었다.
  Dog d1 = Dog(); // 인스턴스화 되었다. Dart에서는 new 키워드를 대 부분 생략한다.

  print('강아지 이름 ${d1.name}');
  print('강아지 나이 ${d1.age}');
  print('강아지 색상 ${d1.color}');
  print('강아지 현재 갈증 지수 ${d1.thirsty}');
  // d1.thirsty = 50;
  d1.drinkWater();
  d1.drinkWater();
  d1.drinkWater();
  d1.drinkWater();
  d1.drinkWater();
  print('강아지 현재 갈증 지수 ${d1.thirsty}');
} //end of main
// 자바 --> .하나의 자바 파일에 public class 를 두개 선언할 수 있나요?

class Dog {
  // 변수의 선언과 동시에 초기화(값을 넣다)
  String name = '토토';
  int age = 5;
  String color = '블랙';
  int thirsty = 100;

  // 2. 물을 마실 때 마다 갈증 지수가 10씩 내려간다.
  void drinkWater() {
    thirsty = thirsty - 10;
  }
}

class Water {
  double liter = 2.0; // 물 2리터

  void drink() {
    // liter = liter - 0.1;
    liter -= 0.1;
  }
}
