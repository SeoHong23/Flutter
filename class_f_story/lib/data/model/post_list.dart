import 'user.dart';
import 'post.dart';

// 게시글 목록 모델링 해보기

class PostList {
  bool isFirst;
  bool isLast;
  int pageNumber;
  int size;
  int totalPage;
  List<Post> posts;

  // 기본 생성자
  PostList({
    required this.isFirst,
    required this.isLast,
    required this.pageNumber,
    required this.size,
    required this.totalPage,
    required this.posts,
  });

//네임드 생성자
//   PostList.fromMap(Map<String, dynamic> map)
//       : isFirst = map["isFirst"] ?? false,
//         isLast = map["isLast"] ?? false,
//         pageNumber = map["pageNumber"] ?? 0,
//         size = map["size"] ?? 10,
//         totalPage = map["totalPage"] ?? 1,
//         posts = (map["posts"] as List<dynamic>? ?? [])
//             .map((e) => Post.fromMap(e))
//             .toList();

  // 팩토리 생성자를 사용해 보자. == factory 사용시 try - catch, if - else 사용가능
  factory PostList.fromMap(Map<String, dynamic> map) {
    // try {} catch (e {
    // })
    return PostList(
        isFirst: map['isFirst'] ?? false,
        isLast: map['isFirst'] ?? false,
        pageNumber: map['pageNumber'] ?? 0,
        size: map['size'] ?? 10,
        totalPage: map['totalPage'] ?? 10,
        posts: (map['posts'] as List<dynamic>? ?? [])
            .map((e) => Post.fromMap(e))
            .toList());
  }

  // 깊은 복사 (객체 변경 시 활용)
  PostList copyWith({
    bool? isFirst,
    bool? isLast,
    int? pageNumber,
    int? size,
    int? totalPage,
    List<Post>? posts,
  }) {
    return PostList(
      isFirst: isFirst ?? this.isFirst,
      isLast: isLast ?? this.isLast,
      pageNumber: pageNumber ?? this.pageNumber,
      size: size ?? this.size,
      totalPage: totalPage ?? this.totalPage,
      posts: posts ?? List<Post>.from(this.posts), // 리스트 깊은 복사
    );
  }
}
