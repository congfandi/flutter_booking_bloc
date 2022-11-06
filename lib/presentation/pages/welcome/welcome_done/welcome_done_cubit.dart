import 'package:bloc/bloc.dart';

import 'welcome_done_state.dart';

class Welcome_doneCubit extends Cubit<Welcome_doneState> {
  Welcome_doneCubit() : super(Welcome_doneState().init());
}
