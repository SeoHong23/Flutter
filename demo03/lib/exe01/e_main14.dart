// 그냥 할 뿐~

void main() {
  //1. 널 체크 연산자
  String? userName = getNullableUserName();
  // 널 체크 연산자
  int? userNameLength = userName?.length;

  print('이름 길이 : ${userNameLength}');
  print('---------------------------');

  // 2. 널 병합 연산자
  String finalUserName = userName ?? '홍';
  print('finalUserName : ${finalUserName}');

  String upperOrNoName = userName?.toUpperCase() ?? '123';
}

String? getNullableUserName({String? name}) {
  return name;
}
