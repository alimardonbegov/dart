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
