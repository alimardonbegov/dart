// import 'package:dart_application_1/dart_application_1.dart'
//     as dart_application_1;

void main(List<String> arguments) {
  // print('Hello world: ${dart_application_1.calculate()}!');

//! numbers
  int a = 1;
  double b = 2;
  b = 3;
  // print(a + b);

//! strings
  String firstName = "Ali";
  var secondName = "Begov";
  var city = "Budva";
  var country = "Montenegro";
  var name = firstName + "mardon" + " " + secondName;
  var shortName = name.substring(0, 3);
  // print(city.length);
  // print(country.substring(4));
  // print(shortName);
  var phone = 888999333;
  String phoneText = phone.toString();
  int phoneNumberFromText = int.parse(phoneText.substring(0, 2));
  // print(phoneText);
  // print(phoneNumberFromText);

  //! list
  var list1 = [1, 2, 3];
  var list2 = <int>[4, 5, 6];
  List<int> list3 = [7, 8, 9];
  List list4 = ["a", "b", "c"];
  List list5 = const [10, 11, 12]; // can't change the value
  var listIncludeAll1 = list1 + list2 + list3;
  var listIncludeAll2 = [...list1, ...list2, ...list3];
  bool text = true;
  var newList = [...listIncludeAll2, if (text) ...list4];
  // print(listIncludeAll1);
  // print(listIncludeAll2);
  // print(newList);

  //! set
}
