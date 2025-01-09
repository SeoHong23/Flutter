class Job {
  String? name;
  String? power;
  int? hp;
  Job(String? name, String? power, int? hp) {
    print('전직');
  }
}

class MabubSa extends Job {
  String? magic;
  MabubSa(String? name, String? power, int? hp, String? magic)
      : super(name, power, hp) {
    print('${magic}');
  }
}

class JeonSa extends Job {
  String? doubleTouch;
  JeonSa(String? name, String? power, int? hp, String? doubleTouch)
      : super(name, power, hp) {
    print('더블 공격');
  }
}

void main() {
  MabubSa mabubSa = MabubSa('썬콜', '중', 100, '매직');
}
