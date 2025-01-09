// Animal 추상클래스를 구현해서 만들어 줘 라고 부탁 했어야 한다.
abstract class Animal {
  void performAction();
}

// 추상클래스를 구현 할 때 implements를 사용한다.
class Dog implements Animal {
  @override
  void performAction() {
    print('멍멍 배고파!');
  }
}

class Cat implements Animal {
  @override
  void performAction() {
    print('야옹 배고파!');
  }
}

class Fish implements Animal {
  @override
  void performAction() {
    print('뻐끔뻐끔 배고파!');
  }
}

// 한단계 더 실력을 쌓아 보자
// 동적 바인딩이란 뭘까?

void start(Animal a) {
  // performAction() 메서드가 동작하게 만들고 싶다.
  // 단, 강아지든, 고양이든, 물고기든 동적으로 들어 오더라도
  // performAction() 호출 되게 설계해야 해!
  a.performAction();
}

void start1(Cat c) {
  c.performAction();
}

void start2(Dog d) {
  d.performAction();
}

void start3(Fish f) {
  f.performAction();
}

void main() {
  start(Dog());
  start(Cat());
  start(Fish());
}
