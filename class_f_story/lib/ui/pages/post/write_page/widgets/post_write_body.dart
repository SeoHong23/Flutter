import 'package:class_f_story/ui/pages/post/write_page/widgets/post_write_form.dart';
import 'package:flutter/material.dart';

class PostWriteBody extends StatelessWidget {
  const PostWriteBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: [
          // PostWriteForm() <-- 따로 분리
          // 기본적 으로 사용 하자
          Flexible(child: PostWriteForm()),
        ],
      ),
    );
  }
}
