import 'dart:async';

// Stream<int>? stream;
// StreamSubscription<int>? subscription;

Future<void> listenOne(stream) async {
  await for (var element in stream) {
    print(element);
  }
}

Future<void> listenTwo(stream) async {
  await for (var element in stream) {
    print(element);
  }
}

void main(List<String> arguments) {
  Stream<int> stream = Stream.periodic(Duration(seconds: 1), (sec) => sec);
  //для подписки на стрин неколькими слушателями

  // StreamSubscription<int> subscription = stream.listen((event) {
  //   print(event);
  // });
  // Future.delayed(Duration(seconds: 5), () => {subscription.pause()});
  // Future.delayed(Duration(seconds: 10), () => {subscription.resume()});
  // Future.delayed(Duration(seconds: 15), () => {subscription.cancel()});

  Stream<int> streamTwo =
      Stream.periodic(Duration(seconds: 1), (sec) => sec).asBroadcastStream();
  listenOne(streamTwo);
  listenTwo(streamTwo);
}
