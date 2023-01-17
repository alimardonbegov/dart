import 'dart:async';

StreamController<int> controller = StreamController();
StreamSubscription<int>? subscription;
void main(List<String> arguments) {
  print("start");
  controller.add(1);
  controller.add(2);
  controller.add(3);
  controller.add(4);
  controller.add(5);
  print("middle");
  subscription = controller.stream.listen((event) => print(event));
  controller.add(6);
  controller.add(7);
  controller.add(8);
  controller.add(9);
  Future.delayed(Duration(seconds: 3), () {
    subscription?.cancel();
    controller.close();
  });
}
