//Null safety 란?
// 개발자가 널 에러를 피할 수 있도록 도와주는 다트 언어의 기능이다.

// 코드의 시작점
void main() {
  String name = '길동';
  int age = 30;

  // String? 옵셔널 타입이다.
  //null 값을 허용할 수 있다.
  String? nullableName;
  int? nullableAge;

  print('name : ${name}');
  // print('nullAbleName : ${nullableName.length}'); 컴파일 시점에 오류를 미리 확인할 수 있다.
  print('nullAbleAge : ${nullableAge}');

  // 방어적 코드도 작성해 보자.
  if (nullableName != null) {
    print(nullableName.length);
  }
} //end of main
