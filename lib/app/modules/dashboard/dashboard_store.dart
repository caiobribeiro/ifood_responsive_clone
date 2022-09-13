import 'package:mobx/mobx.dart';

part 'dashboard_store.g.dart';

// ignore: library_private_types_in_public_api
class DashboardStore = _DashboardStoreBase with _$DashboardStore;

abstract class _DashboardStoreBase with Store {
  @observable
  int pageController = 0;
}
