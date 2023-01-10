import 'src/Book_and_Box_classes.dart';
import 'src/Car_class.dart';
import 'src/extends/Bike.dart';
import 'src/extends/Vehicle.dart';

void main(List<String> arguments) {
  //! classes
  var bmw = Car("Bmw x6", 1);
  var speedOfBmw = bmw.getSpeed;

//! переопределение операторов
  var book1 = Book("WarR", 10);
  var book2 = Book("Guttep", 12);
  var book3 = Book("Agio", 926);
  var box = book1 + book2;
  box + book3;
  // box.printAllBooksInBox();

  //! расширение классов
  var bike1 = Bike("bike", 40, 1, 1, 1);
  bike1.makeSignal();
  var car1 = Vehicle("car", 290, 4, 1, 5, "automatic");
  car1.makeNoise();
}
