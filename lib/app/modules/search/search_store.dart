import 'package:mobx/mobx.dart';

part 'search_store.g.dart';

// ignore: library_private_types_in_public_api
class SearchStore = _SearchStoreBase with _$SearchStore;

abstract class _SearchStoreBase with Store {
  @observable
  int value = 0;

  @action
  void increment() {
    value++;
  }
}
