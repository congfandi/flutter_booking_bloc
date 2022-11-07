import 'package:bloc/bloc.dart';

import 'detail_state.dart';

class DetailCubit extends Cubit<DetailState> {
  DetailCubit() : super(DetailState().init());
}
