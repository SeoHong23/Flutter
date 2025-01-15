// async / await 는 비동기 처리를 마치 동기적 방식으로 코드를 만들어 준다.
void main() async {
  // 비동기 프로그래밍 테스트 코드
  // 동기성 - 모든 코드가 순차적으로 진행되는 형태
  // 비동기성 - 코드가 동시 다발적으로 실행, 순차적 실행을 보장 할 수 없다.

  // 키워드 묶음
  // async / await --> Future : 1회만 응답을 돌려 받는 경우 사용한다.

  // 규칙 - 함수 내부에서 await 키워드를 가지고 있다면 그 함수를 감싸는 블록은
  // 무조건 async 키워드를 붙여야 한다 (왜 컴파일러가 비동기 코드가 있다고 알아야 한다.)
  print('task 1 ..............');
  var data1 = await fetchData();
  print('data1 확인: ${data1}');
  print('task 2 ..............');

  print('task 3 ..............');
}

Future<String> fetchData() {
  return Future.delayed(
    Duration(seconds: 3),
    () {
      return '3초 동안 기다렸어!!!';
    },
  );
}
