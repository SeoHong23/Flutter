// 화살표 함수(람다 표현식)
// 코드의 시작점
void main() {
  int num1 = 500;
  int num2 = 10;
} // end of main

//  재활용 하고 싶다면 --> 함수 --> 좀 더 간결 --> 화살표 함수
// 한줄에 간단하게 쓸때는 람다 식이 복잡하면 익명함수
int add(int n1, int n2) {
  return n1 + n2;
}

int add2(int n1, int n2) => n1 + n2;
int sub(int n1, int n2) => n1 - n2;
int mul(n1, n2) => n1 * n2;
int div(n1, n2) => n1 / n2;

List<int> numbers = [1, 2, 3, 4, 5];

var doubled = numbers.map((n) => n * 2).toList();
