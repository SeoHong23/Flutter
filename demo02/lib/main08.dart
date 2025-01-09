// 익명 함수
// 코드의 시작점
void main() {
  // 1단계 - 이름이 없는 함수 (선언을 하더라도 외부에서 사용할 방법이 없다.)
  // 변수에 할당하지 않고 바로 익명 함수를 호출하는 것은 dart에서 불가능 하다.
  (int number) {
    return 100 + number;
  };

  // 2 단계 - 함수를 변수에 담을 수 있다.
  // dart 함수에 타입은 Funtion 이다.

  Function() square = () {
    return 10 * 10;
  };

  // 3 단계
  var sub = (int number1, int number2) {
    return number1 - number2;
  };

  // 4 단계 - dart 에서는 매개변수 데이터 타입도 생략이 가능하다.
  var add = (number1, number2) {
    return number1 + number2;
  };

  // 문제 1
  // 두 수의 곱하기 익명 함수를 정의하고 그 함수를 변수에 담는 식을 완성하세요
  var num1 = (a, b) {
    return a * b;
  };

  print('2의 제곱은 ::: ${square()}');
  print('두 수의 빼기 연산 ::: ${sub(10, 5)}');
  print('두 수의 더하기 연산 ::: ${add(5, 5)}');
  print('두 수의 곱하기 연산 ::: ${num1(5, 5)}');
} // end of main
