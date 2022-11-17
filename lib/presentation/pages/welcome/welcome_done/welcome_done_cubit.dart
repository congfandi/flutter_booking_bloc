import 'package:bloc/bloc.dart';

import 'welcome_done_state.dart';

class WelcomeDoneCubit extends Cubit<WelcomeDoneState> {
  WelcomeDoneCubit() : super(WelcomeDoneState().init());
}
