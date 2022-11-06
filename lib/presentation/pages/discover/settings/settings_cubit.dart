import 'package:bloc/bloc.dart';

import 'settings_state.dart';

class SettingsCubit extends Cubit<SettingsState> {
  SettingsCubit() : super(SettingsState().init());
}
