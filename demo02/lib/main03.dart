// 코드의 시작점
void main() {
  // 타입 추론이란?
  // 개발자가 변수의 타입을 명시하지 않아도,
  // 자동으로 적절한 타입을 결정해주는 기능을 말한다.
  // Dart 언어에서는 두가지 키워드를 제공한다.
  // var, dynamic 두 개의 키워드를 통해서 타입 추론을 제공한다.

  var n1 = 1;
  var d1 = 10.1;
  var b1 = true;
  var s1 = '홍길동';

  print(n1.runtimeType);
  print('실수 : ${d1.runtimeType}');
  print('부울 : ${b1.runtimeType}');
  print('문자열 : ${s1.runtimeType}');

  print('-----------------------------------------');

  // var 키워드로 한 번 초기화 된 데이터 타입은 다른 데이터 타입으로 변경이 불가능하다.
  // n1 = 20.1; 오류 발생

  dynamic dyN1 = 100;
  dyN1 = 20.5;
  print('dyN1 ${dyN1.runtimeType}');
  // dynamic 타입은 모든 타입을 받을 수 있고 다른 타입으로 변경도 가능하다.
} // end of main
