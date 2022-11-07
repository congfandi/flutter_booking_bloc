import 'package:booking/data/model/trip/trip.dart';

class TripsState {
  List<Trip> yourRoomies = [];
  List<Trip> otherMatches = [];

  TripsState init() {
    return TripsState();
  }

  TripsState clone() {
    return TripsState();
  }
}
