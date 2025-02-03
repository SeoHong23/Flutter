// 로그인 페이지, 회원 가입 페이지 공통 뷰 모델

import 'package:class_f_story/_core/utils/exception_handler.dart';
import 'package:class_f_story/_core/utils/my_http.dart';
import 'package:class_f_story/data/model/session_user.dart';
import 'package:class_f_story/data/repository/user_repository.dart';
import 'package:class_f_story/main.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

// 뷰 모델 --> 화면에 있는 데이터를 가지고 와서 사용한다.
// 로그인 요청을 할 때 어떤 변수를 필요할까?

// 뷰 모델의 속성 --> 세션 유저가 된다.
// 뷰 모델의 행위 --> login, logout, autologin

class SessionGVM extends Notifier<SessionUser> {
  // 뷰 모델에서 컨텍스트를 사용하는 방안
  final mContext = navigatorkey.currentContext!;
  UserRepository userRepository = UserRepository();
  // 상태를 초기화 해 주어야 한다. (선언형 UI 이기 때문에)
  @override
  SessionUser build() {
    // 추상화 변수 state(외부 에서 접근하는 변수명)
    // state ==> SessionUser() 객체가 된다.
    return SessionUser(
      id: null,
      username: null,
      accessToken: null,
      isLogin: false,
    );
  }

  // 로그인 행위
  // 화면에서 뷰 모델에게 로그인 요청 위임
  Future<void> login(String username, String password) async {
    // 서버측으로 던질 데이터를 구축해야 한다.
    try {
      // 요청 HTTP 메세지 body
      final body = {
        'username': username,
        'password': password,
      };
      final (responseBody, accessToken) =
          await userRepository.findByUsernameAndPassword(body);

      // if(responseBody['success'] -- true --> false
      // if(responseBody['success'] == false) {
      // 서버 측에서 통신은 성공했으나 내부 오류 판단
      if (!responseBody['success']) {
        ExceptionHandler.handleException(
            responseBody['errorMessage'], StackTrace.current);
        // 사용자에게 로그인 실패 (비번 x , 사용명 x )
        return; // 실행의 제어권 반납
      }

      // 1. JWT 토큰을 안전한 금고 보관 처리 // I(입력) / O(출력)
      // I/O 시간이 많이 걸리기 때문에 비동기 처리
      await secureStorage.write(key: 'accessToken', value: accessToken);

      // 2. 뷰 모델 상태 갱신
      // 깊은 복사 처리
      Map<String, dynamic> resData = responseBody['response'];
      state = SessionUser(
          id: resData['id'],
          username: resData['username'],
          accessToken: accessToken,
          isLogin: true);

      // 3. 로그인 이후 인증권한이 필요한 API 접근 시에
      // 매번 금고에 접근해서 dio 속성 값 변경해서 호출 하는건 불변한다.
      // dio 객체를 전역 변수로 설계 했다.
      // 3. Dio 헤더에 JWT 토큰 설정(객체 상태 값 추가)
      dio.options.headers['Authorization'] = accessToken;
      // 화면 이동 처리 pushNamed -> pushNamed -> pushNamed
      // Navigator.pushNamed(mContext, '/post/list');
      // 이전에 쌓여 있던 stack(화면) 다 파괴 하면서 이동 처리
      Navigator.popAndPushNamed(mContext, '/post/list');
      // 모든 예외처리가 설정 된다.
    } catch (e, stackTrace) {
      // IP 주소가 잘못 되었을 때, 서버가 종료 되어 있을 때, 서벼 연결 시간 초과
      ExceptionHandler.handleException('서버 연결 실패', stackTrace);
    }
  }

  // 회원 등록 행위
  // 1. UserRepository 에 회원 등록 API 요청 확인
  Future<void> join(String username, String email, String password) async {
    try {
      // map 구조 만들어서 던지자
      final body = {
        'username': username,
        'email': email,
        'password': password,
      };

      Map<String, dynamic> resBody = await userRepository.save(body);
      // 통신은 성공이지만 내부 판별 오류시 방어적 코드 작성
      if (!resBody['success']) {
        ExceptionHandler.handleException(
            resBody['errorMessage'], StackTrace.current);
        return; // 실행의 제어권 반납
      }

      // 성공하면 회원 가입 완료 -> 화면 이동 코드
      // ExceptionHandler.handleException('회원가입 성공', StackTrace.current);

      // 바로 화면 이동 처리
      Navigator.pushNamed(mContext, '/login');
    } catch (e, stackTrace) {
      ExceptionHandler.handleException('서버 연결 실패', stackTrace);
    }
  }
  // 로그아웃 행위
  // 자동로그인 행위
}

// 창고 관리자 선언 (창고 = 뷰 모델), 어느 창고 관리해라 지정!!
final sessionProvider = NotifierProvider<SessionGVM, SessionUser>(
  () => SessionGVM(),
);
