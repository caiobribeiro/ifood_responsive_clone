import 'package:mobx/mobx.dart';

part 'profile_store.g.dart';

// ignore: library_private_types_in_public_api
class ProfileStore = _ProfileStoreBase with _$ProfileStore;

abstract class _ProfileStoreBase with Store {
  @observable
  int value = 0;

  @action
  void increment() {
    value++;
  }
}
