class Car {
  late final String name;
  late final int age;
  int _speed = 0;
  int _gearSpeed = 0;
  bool _carStarted = false;
  Car(this.name, this.age);

  int get getSpeed => _speed;
  int get getGearSpeed => _gearSpeed;
  set setGearSpeed(int value) => _gearSpeed =
      value; // for change private state - here is a bad example because of changint gearBod without other states

  void carState() {
    if (!_carStarted) {
      print("$name is waiting for start");
    } else if (_carStarted && _speed == 0) {
      print("wroom wrooom, $name is waiting for start");
    } else if (_carStarted && _speed > 0) {
      print("$name is on the way. Its speed is about $_speed !");
    }
  }

  void startCar() {
    if (!_carStarted) {
      _carStarted = true;
      print("$name started... rrrrrr..rrrr");
    }
  }

  void turnOffTheCar() {
    if (_carStarted) {
      _carStarted = false;
      print("$name stalled ... sh.....");
    }
  }

  void speedUp() {
    if (!_carStarted) {
      print("$name is not started!");
    } else if (_carStarted && _gearSpeed >= 0 && _gearSpeed <= 4) {
      _gearSpeed += 1;
      _speed += 10 * _gearSpeed;
      print(
          "Speeded up! GearSpeed is $_gearSpeed and $name speed $_speed km/h");
    } else {
      print("This is the maximum speed of $name");
    }
  }

  void speedDown() {
    if (!_carStarted) {
      print("$name is not started!");
    } else if (_carStarted && _gearSpeed > 1 && _gearSpeed <= 4) {
      _gearSpeed -= 1;
      _speed -= 10 * (_gearSpeed + 1);
      print(
          "Speeded down! GearSpeed is $_gearSpeed and $name speed $_speed km/h");
    } else {
      print("$name is stopped");
    }
  }
}
