import 'package:bloc/bloc.dart';

import 'trips_state.dart';

class TripsCubit extends Cubit<TripsState> {
  TripsCubit() : super(TripsState().init());
}
