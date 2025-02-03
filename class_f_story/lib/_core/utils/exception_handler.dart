import 'package:class_f_story/_core/utils/logger.dart';
import 'package:class_f_story/main.dart';
import 'package:flutter/material.dart';

class ExceptionHandler {
  static void handleException(dynamic exception, StackTrace stackTrace) {
    logger.e('Exception : $exception');
    logger.e('StackTrace : $stackTrace');

    // 간혹 비동기 작업 시 currentContext 사라 질 수 있다.
    final mContext = navigatorkey.currentContext;
    if (mContext == null) return;

    // 시스템 키보드가 있다면 내려 주자!
    FocusScope.of(mContext).unfocus();

    ScaffoldMessenger.of(mContext).showSnackBar(
      SnackBar(
        content: Text(
          exception.toString(),
        ),
      ),
    );
  }
}
