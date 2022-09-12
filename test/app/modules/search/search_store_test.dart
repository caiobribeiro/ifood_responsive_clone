import 'package:flutter_test/flutter_test.dart';
import 'package:ifood_responsive_clone/app/modules/search/search_store.dart';
 
void main() {
  late SearchStore store;

  setUpAll(() {
    store = SearchStore();
  });

  test('increment count', () async {
    expect(store.value, equals(0));
    store.increment();
    expect(store.value, equals(1));
  });
}