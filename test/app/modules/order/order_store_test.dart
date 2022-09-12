import 'package:flutter_test/flutter_test.dart';
import 'package:ifood_responsive_clone/app/modules/order/order_store.dart';
 
void main() {
  late OrderStore store;

  setUpAll(() {
    store = OrderStore();
  });

  test('increment count', () async {
    expect(store.value, equals(0));
    store.increment();
    expect(store.value, equals(1));
  });
}