class Cat {
  late final String name;
  int age = 0;
  bool _sleepState = false; // !_private state only for this module|file

  bool get isSleep => _sleepState; // method to check state in another module
  set setSleepState(bool val) => _sleepState = val;

  Cat(String name, [int age = 0, bool _sleepState = false]);

  void sleep() {
    if (!_sleepState) {
      _sleepState = true;
      print('Кот засыпает: Хр-р-р-р-р...');
    } else {
      print('Сон во сне... мммм...');
    }
  }

  void wakeUp() {
    if (_sleepState) {
      _sleepState = false;
      print('Лениво потягиваясь, открывает глаза...');
    }
  }

  void helloMaster() {
    if (!_sleepState) {
      print('Мя-я-я-я-у!!!');
    }
  }

  void currentState() {
    if (_sleepState) {
      print('Кот спит');
    } else {
      print('Кот бодрствует');
    }
  }
}

class CatType2 {
  late final String name;
  int age = 0;
  bool _sleepState = false; // !_private state only for this module|file

  bool get isSleep => _sleepState; // method to check state in another module
  set setSleepState(bool val) => _sleepState = val;

  CatType2({required this.name, required this.age, bool sleepState = false})
      : _sleepState =
            sleepState; //  передаем в приватную переменную наше значение

  void sleep() {
    if (!_sleepState) {
      _sleepState = true;
      print('Кот засыпает: Хр-р-р-р-р...');
    } else {
      print('Сон во сне... мммм...');
    }
  }

  void wakeUp() {
    if (_sleepState) {
      _sleepState = false;
      print('Лениво потягиваясь, открывает глаза...');
    }
  }

  void helloMaster() {
    if (!_sleepState) {
      print('Мя-я-я-я-у!!!');
    }
  }

  void currentState() {
    if (_sleepState) {
      print('Кот спит');
    } else {
      print('Кот бодрствует');
    }
  }
}

class CatTypeWithChangeConstructor {
  late final String name;
  int age = 0;
  bool _sleepState = false; // !_private state only for this module|file

  bool get isSleep => _sleepState; // method to check state in another module
  set setSleepState(bool val) => _sleepState = val;

  CatTypeWithChangeConstructor(
      {required this.name, required this.age, bool sleepState = false})
      : _sleepState =
            sleepState; //  передаем в приватную переменную наше значение
  // ! change states
  CatTypeWithChangeConstructor.onlyName(this.name);
  CatTypeWithChangeConstructor.fromNameAndAge(this.name, int old) : age = old;

  void sleep() {
    if (!_sleepState) {
      _sleepState = true;
      print('Кот засыпает: Хр-р-р-р-р...');
    } else {
      print('Сон во сне... мммм...');
    }
  }

  void wakeUp() {
    if (_sleepState) {
      _sleepState = false;
      print('Лениво потягиваясь, открывает глаза...');
    }
  }

  void helloMaster() {
    if (!_sleepState) {
      print('Мя-я-я-я-у!!!');
    }
  }

  void currentState() {
    if (_sleepState) {
      print('Кот спит');
    } else {
      print('Кот бодрствует');
    }
  }
}
