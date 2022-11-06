import 'package:bloc/bloc.dart';

import 'discover_state.dart';

class DiscoverCubit extends Cubit<DiscoverState> {
  DiscoverCubit() : super(DiscoverState().init());

  void changeIndex(int index) {
    emit(state.clone()..selectedIndex = index);
  }
}
