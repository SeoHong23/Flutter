import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class Product {
  final String name;
  final bool isAvailable;

  Product({required this.name, this.isAvailable = false});

  // copyWith 메서드를 추가하기

  Product copyWith({String? name, bool? isAvaliable}) {
    return Product(
        name: name ?? this.name, isAvailable: isAvaliable ?? this.isAvailable);
  }
}

// 사실 창고가 --> 뷰모델 입니다.
// 창고 만들기
class ProductNotifier extends Notifier<List<Product>> {
  @override
  List<Product> build() {
    // 초기값 설정
    return [];
  }

  // addProduct()

  void addProduct(String name) {
    state = [...state, Product(name: name)];
  }

  // 재고 여부 변경 toggleAsAvailable(int index)

  void toggleAsAvailable(Product product) {
    // state = [1];
    //  state = [...state, Product(name: name)];
    state = state
        .map((item) => item == product
            ? item.copyWith(isAvaliable: !item.isAvailable)
            : item)
        .toList();
    // state = [1,2]; --> 2.isAvaliable = !true

  }

  // remoteProduct(int index)

void remoteProduct(Product product)
}

// 창고 관리자
final productProvider =
    NotifierProvider<ProductNotifier, List<Product>>(() => ProductNotifier());
