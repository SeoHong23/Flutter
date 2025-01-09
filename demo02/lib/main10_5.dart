// 코드의 진입점
// 캐스케이스 연산자
// ..연산자를 사용하면 동일 객체에서 여러 메서드나 속성을 연속적으로 호출할 수 있는
// 유용한 연산자 이다.
void main() {
  // 오버로딩 보다 더 강력한 선택적 매개 변수가 잇기 때문에 dart 에서는 오버로딩이 없다.
  Person(name: '홍길동');
} // end of main

class Person {
  String name;
  int money = 0;

  Person({required this.name});

  void setName(String newName) {
    this.name = newName;
  }

  void addMoney(int amount) {
    //this.money = this.money = amount;
    this.money += amount;
  }
}
