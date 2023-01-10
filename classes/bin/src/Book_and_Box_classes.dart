class Box {
  List<Book> items;
  Box(this.items);

  void printAllBooksInBox() {
    items.forEach((element) {
      print(element.name);
    });
  }

  void operator +(Book book) {
    items.add(book);
  }

  void operator -(Book book) {
    items.remove(book);
  }
}

class Book {
  final String name;
  final int pages;
  Book(this.name, this.pages);

  Box operator +(Book anotherBook) {
    return Box([this, anotherBook]);
  }
  // Box operator -(Book someBook) {
  //   return Box[this.remove()]
  // }
}
