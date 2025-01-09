void main() {
  Dog dog = Dog();
  Water water = Water();

  // 강아지가 물을 마신다.
  dog.drinkWater(water);

  // 강아지의 갈증 지수는
  // 현재 남아있는 물의 양은
  print('강아지의 갈증지수는 ${dog.thirsty}');
  print('남은 물의 양은 ${water.liter}');
}

class Dog {
  // 변수의 선언과 동시에 초기화(값을 넣다)
  String name = '토토';
  int age = 5;
  String color = '블랙';
  int thirsty = 100;

  // 2. 물을 마실 때 마다 갈증 지수가 10씩 내려간다.
  void drinkWater(Water water) {
    thirsty = thirsty - 10;
    water.drink();
  }
}

class Water {
  double liter = 2.0; // 물 2리터

  void drink() {
    // liter = liter - 0.1;
    liter -= 0.1;
  }
}
