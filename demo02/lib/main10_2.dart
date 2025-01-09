void main() {
  // 생성자
}

// dart 라는 언어는 기본적으로 null 값을 허용 하지 않는다.
class Dog {
  String name;
  int age;
  String color;
  int thirsty;
  // Dog(this.name, this.age, this.color, this.thirsty) {}
  Dog(this.name, this.age, this.color, this.thirsty); // 생성자 구현 부분 생략 가능
  // Dog(this.name, this.age); 이거 안됨 --> dart에서는 생성자 오버로딩이 없다.
}

class Water {
  double liter = 2.0; // 물 2리터

  void drink() {
    // liter = liter - 0.1;
    liter -= 0.1;
  }
}
