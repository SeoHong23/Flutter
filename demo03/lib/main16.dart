// late 키워드
// - 게으른,
// 지연 초기화를 의미하며 변수를 선언만 해두고 나중에 필요할 때 초기화 하도록 도와 줍니다.
// 보통은 final 키워드와 함께 많이 사용이 됩니다.

void main() {
  // 1. late 키워드를 사용 해 보자.
  late String greeting;

  greeting = getGreetingMessage();
  print(greeting);

  print('-------------------------------');

  // 2. late final 변수 late 보단 많이씀
  late final int number;
  number = 100;
  print(number);

  // 컴파일 시점에 사용시 오류 확인
  late String notAssigned;
  // print(notAssigned);
}

String getGreetingMessage() {
  print('함수 호출'); // 로깅을 찍어본다. 디버깅이 중요
  return 'Hello, Dart!';
}
