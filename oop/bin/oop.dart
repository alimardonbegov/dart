import 'package:oop/src/cat.dart';

void catProcessing(CatTypeWithChangeConstructor cat) {
  print("Name of the cat is '${cat.name}' and it is ${cat.age} yo");
  cat.helloMaster();
  cat.currentState();
} // !здесь абстрактный кот, который потом будет опрелен при вызове функции

void main(List<String> arguments) {
  var catFirst = Cat("Jack", 2);
  // catFirst.age = 3;
  // catFirst.name = "Jack";
  // catFirst.sleepState = false; private state
  // catFirst.helloMaster();
  // catFirst.sleep();
  // catFirst.currentState();
  // catFirst.wakeUp();
  // catFirst.currentState();
  // catFirst.setSleepState = false; // !use "=" instead as arg in function

  var catSecond = CatType2(age: 2, name: "Don", sleepState: false);
  // catSecond.currentState();
  // catSecond.helloMaster();
  // print(catSecond.age);

  print("simple cat:");
  var catThird = CatTypeWithChangeConstructor(name: "Ti Gi", age: 3);
  catProcessing(catThird);

  print("cat onlyName :");
  catThird = CatTypeWithChangeConstructor.onlyName("TiGi");
  catProcessing(catThird);
  //переписывает экземпляр класса

  print("cat fromNameAndAge :");
  catThird = CatTypeWithChangeConstructor.fromNameAndAge("TiGiii", 2);
  catProcessing(catThird);
//переписывает экземпляр класса
}
