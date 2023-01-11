class Item {
  final String name;
  final double weight;
  Item(this.name, this.weight);
}

abstract class StorageSystem {
  void addItem(Item item);
  Item popItem(); // для получения последнего Item'a
  double systemWeight(); // вес всех элементов в системе хранения
  void showItemList();
}

class BoxSystem implements StorageSystem {
  var itemList = <Item>[];
  double weightLimit;
  BoxSystem(this.weightLimit);

  @override
  void addItem(Item item) {
    var currentSystemWeight = systemWeight();
    if (currentSystemWeight < weightLimit &&
        weightLimit - currentSystemWeight > item.weight) {
      itemList.add(item);
      print("${item.name} added to the box");
    } else {
      print("${item.name} is overweight. We can't add this item in the box");
    }
  }

  @override
  Item popItem() {
    return itemList.removeLast();
  }

  @override
  double systemWeight() {
    var sum = 0.0;
    itemList.forEach((element) {
      sum += element.weight;
    });
    return sum;
  }

  @override
  void showItemList() {
    for (var element in itemList) {
      print("In the box ${element.name}, ${element.weight}");
    }
  }
}

class Cupboard implements StorageSystem {
  var itemList = <Item>[];
  double weightLimit;
  Cupboard(this.weightLimit);

  @override
  void addItem(Item item) {
    var currentSystemWeight = systemWeight();
    if (weightLimit > currentSystemWeight &&
        weightLimit - currentSystemWeight > item.weight) {
      itemList.add(item);
      print("${item.name} added to cupboard!");
    } else {
      print("${item.name} is overweight!  This itme is not added to cupboard");
    }
  }

  @override
  Item popItem() {
    return itemList.removeLast();
  }

  @override
  double systemWeight() {
    var sum = 0.0;
    itemList.forEach((element) {
      sum += element.weight;
    });
    return sum;
  }

  @override
  void showItemList() {
    for (var element in itemList) {
      print("In the cupboard ${element.name}, ${element.weight}");
    }
  }
}
