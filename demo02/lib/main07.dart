// 논리 연산자

void main() {
  bool isRainy = true;
  bool hasUmbrella = false;

  // and
  //    T     &&     T   ---> True
  print(isRainy && hasUmbrella);
  print(hasUmbrella && isRainy);

  // OR
  print(isRainy || hasUmbrella);
  print(hasUmbrella || isRainy);

  // NOT
  print(!isRainy);

  String greeting = "Hello";
  String name = "Dart";
  print(greeting + " " + name);
}
