// 구분하기위해서 Session 붙임 로그인했을 때 내정보를 담은거
class SessionUser {
  int? id;
  String? username;
  String? accessToken;
  bool? isLogin;

  SessionUser({
    required this.id,
    required this.username,
    required this.accessToken,
    required this.isLogin,
  });
}
