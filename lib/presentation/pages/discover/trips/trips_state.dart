import 'package:booking/config/config.dart';
import 'package:booking/data/model/trip/trip.dart';

class TripsState {
  List<Trip> yourRoomies = [];
  List<Trip> otherMatches = [];
  HttpStateStatus status = HttpStateStatus.initial;

  TripsState init() {
    return TripsState();
  }

  TripsState clone() {
    return TripsState();
  }
}
