import 'Transport.dart';

class Bike extends Transport {
  Bike(String typeOfTransport, int maxSpeed, int seats,
      int passangersInTrasnport, int maxPassengers)
      : super(typeOfTransport, maxSpeed, seats, passangersInTrasnport,
            maxPassengers) {}
  @override
  void makeSignal() {
    print("dziin dziin");
  }
}
