class Person {
  String? name;
  int money = 0;

  void setName(String newName) {
    this.name = newName;
  }

  void addMoney(int amount) {
    //this.money = this.money = amount;
    this.money += amount;
  }
}

void main() {
  var p1 = Person()
    ..setName('홍길동')
    ..addMoney(5000)
    ..money += 2000;
  print(p1.name);
  print(p1.money);
} // end of main
