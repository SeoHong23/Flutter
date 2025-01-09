// 믹스인 사용해보기
// 여러 계층에서 코드를 재사용 할 수 있도록 하는 코드 조각이다.

mixin Engine {
  int power = 5000;
}
mixin Wheel {
  String wheelName = '4륜 구동 바퀴';
}

class BMW with Engine, Wheel {}

void main() {
  // 인스턴스화 시킴
  BMW bm1 = BMW();
  print(bm1.power);
  print(bm1.wheelName);

  // 상속구조를 사용하면 단일 상속만 허용한다. 믹스인을 사용하면 여러 계층에서
  // 코드의 조각들을 편하게 가져올 수 있다.
  // 단, 믹스인은 Mixin Engine이 인스턴스화 되는 것은 아니다.!!!
  // Wheel wheel1 = Wheel(); 믹스인은 인스턴스화 시킬 수 없다.
}
