import 'src/abstract2/ItemAndBox.dart';
import 'src/change operator/Book_and_Box_classes.dart';
import 'src/simple class/Car_class.dart';
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
  var car1 = Vehicle("car", 290, 4, 1, 5, "automatic");
  // bike1.makeSignal();
  // car1.makeNoise();

  //! Абстрактный класс
  var boxSystem = BoxSystem(1);
  var cupboard = Cupboard(10);

  StorageSystem? storageSystem = boxSystem;
  storageSystem.addItem(Item("Pen", 0.1));
  storageSystem.addItem(Item("Notebook", 0.2));
  storageSystem.addItem(Item("Pasta", 1));
  storageSystem.showItemList();

  storageSystem = cupboard;
  storageSystem.addItem(Item("bed", 80));
  storageSystem.addItem(Item("water", 5));
  storageSystem.addItem(Item("bag", 2));
  // storageSystem.showItemList();
}
