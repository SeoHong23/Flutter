// 팀장이, 선임 개발자가 물고기 소리나는 프로그램을 만들어달라 요청을 했다면?

class Dog {
  void performAction() {
    print('멍멍 배고파');
  }
}

class Cat {
  void performAction() {
    print('야옹 배고파');
  }
}

// 신입이 작성 했다면 가정
class Fish {
  void hungry() {
    print('뻐끔뻐끔 배고파');
  }
}

void main() {
  Dog d = Dog();
  Cat c = Cat();

  Fish f = Fish();
  f.hungry();

  // f.performAction(); 동적인 코드로 돌렸다면 오류가 발생 된다.
  // 팀장의 잘못입니다.
}
