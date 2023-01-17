mixin Eating {
  void eat() {
    print("Eating");
  }
}
mixin Running {
  void run() {
    print("Running");
  }
}

abstract class Purring {
  void purr() {
    print('Mur-mur-mur');
  }
}

abstract class Whining {
  void whine() {
    print('Auuuuu');
  }
}

abstract class Flying {
  void fly() {
    print('Flying');
  }
}

class Cat extends Purring with Eating, Running {
  void goToEat() {
    run();
    eat();
    purr();
    print("Прибежал котик, покушал и начал мурчать");
  }
}

class Dog extends Whining with Eating, Running {
  void runToEat() {
    run();
    eat();
    whine();
    run();
    print("Прибежал собакен поел, отбежал и начал выть");
  }
}

class Bird extends Flying with Eating, Running {
  void flyToEat() {
    fly();
    run();
    eat();
    print("Прилетела птичка, подбежала к еде, покушала и улетела");
  }
}

mixin Chipping on Bird {
  void chip() {
    flyToEat(); // метод класса Птиц
    print("щебетает"); // добавляем доп функционал
  }
} // создаем примесь для класса Птиц и добавляем к "методу" доп функционал

class Sparrow extends Bird with Chipping {} // создаем класс

void main(List<String> arguments) {
  // var cat = Cat()..goToEat();
  // var dog = Dog()..runToEat();
  // var bird = Bird()..flyToEat();
  // var listMixin = <Eating>[cat, dog, bird];
  // listMixin.forEach((element) {
  //   element.eat();
  // });

  var sparrow = Sparrow()..chip();
}
