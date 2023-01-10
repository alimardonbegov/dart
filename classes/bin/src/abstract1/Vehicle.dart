import 'Transport.dart';

class Vehicle extends Transport {
  late String gearBox;
  Vehicle(String typeOfTransport, int maxSpeed, int seats,
      int passangersInTrasnport, int maxPassengers, gearBox)
      : super(typeOfTransport, maxSpeed, seats, passangersInTrasnport,
            maxPassengers) {
    String typeOfBike;
  }
  @override
  void makeSignal() {
    print("biip biip");
  }

  void makeNoise() {
    print("thhhhh thhhhhh thhhhhh");
  }
}
