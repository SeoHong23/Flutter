class Animal {
  // 상수(final) - 한번은 반드시 초기화 되어야 하는 함수
  final String name;

  // 생성자(강제성)
  Animal(this.name);
}

// Dog는 동물이다 <-- 다형성
class Dog extends Animal {
  Dog(String name) : super(name);

  void bark() {
    print('왈왈');
  }
}

void main() {
  Dog d3 = Dog('똘이');
  print(d3.name);
  d3.bark();
}
