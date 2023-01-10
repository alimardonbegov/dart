class Item {
  String name;
  double weight;
  Item(this.name, this.weight);
}

abstract class StorageSystem {
  void addItem(Item item);
  Item popItem(); // для получения последнего Item'a
  double weightItem(); // для получения не целого числа в виде веса предмета
}

class Box implements StorageSystem {
  List<Item> itemList;
  double weightLimit;
  Box(this.weightLimit);

  @override
  void addItem(Item item) {
    itemList.add(item);
  }

  @override
  Item popItem() {
    itemList.removeLast();
    throw UnimplementedError();
  }

  @override
  double weightItem() {
   if (weightLimit >)
    throw UnimplementedError();
  }
}
