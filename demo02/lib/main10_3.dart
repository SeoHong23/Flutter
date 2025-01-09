void main() {
  // 생성자
  Dog(age: 5, name: '토토', color: '블랙', thirsty: 100);
}
// 선택적 매개변수를 알아 보자.
// 선택적 위치 매개변수 (Optional Positional Parmters)
// 선택적 명명 매개변수 (Optional Named Parmters)

// dart 라는 언어는 기본적으로 null 값을 허용 하지 않는다.
class Dog {
  String name;
  int age;
  String color;
  int thirsty;

  // {} 붙이면 선택적 명명 매개 변수

  Dog(
      {required this.name,
      required this.age,
      required this.color,
      required this.thirsty}); // 생성자 구현 부분 생략 가능
  // Dog(this.name, this.age); 이거 안됨 --> dart에서는 생성자 오버로딩이 없다.
}

class Water {
  double liter = 2.0; // 물 2리터

  void drink() {
    // liter = liter - 0.1;
    liter -= 0.1;
  }
}
