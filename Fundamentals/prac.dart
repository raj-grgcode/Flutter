//1.This program is just for practice and contains error 
//as each program is allowed only 1 main() function but for learning purpose i have used 3 in thi

final double f = 80.0;
var w = 200;
String busId = "BUS_042";
bool isStudent = true;
var passengerCount = 3;

//2.
double applyDiscount(double baseFare, {bool isStudent = false}) {
  return isStudent ? baseFare * 0.5 : baseFare;
}

void main() {
  print(applyDiscount(100.0)); // 100.0
  print(applyDiscount(100.0, isStudent: true)); // 50.0
}

////////
String formatRideSummary(String driverName, int stopCount) {
  var s = "$driverName completed $stopCount steps";
  return s;
}

void main() {
  print(formatRideSummary('Suresh', 5));
}

//3
class Trip {
  String tripID;
  String busId;
  bool isActive;
  Trip(this.tripID, this.busId, this.isActive);
  void endTrip() {
    isActive = false;
    print('Trip $tripID ended');
  }
}

void main() {
  var t = Trip('12', '11', true);
  t.endTrip();
}
