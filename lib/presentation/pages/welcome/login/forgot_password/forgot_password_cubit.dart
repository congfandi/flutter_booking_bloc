import 'package:bloc/bloc.dart';

import 'forgot_password_state.dart';

class Forgot_passwordCubit extends Cubit<Forgot_passwordState> {
  Forgot_passwordCubit() : super(Forgot_passwordState().init());
}
