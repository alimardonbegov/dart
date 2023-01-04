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