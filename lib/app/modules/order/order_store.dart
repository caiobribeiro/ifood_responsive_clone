import 'package:mobx/mobx.dart';

part 'order_store.g.dart';

// ignore: library_private_types_in_public_api
class OrderStore = _OrderStoreBase with _$OrderStore;

abstract class _OrderStoreBase with Store {
  @observable
  int value = 0;

  @action
  void increment() {
    value++;
  }
}
