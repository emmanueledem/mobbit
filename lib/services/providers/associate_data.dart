// import 'package:flutter/cupertino.dart';
// import 'package:hive/hive.dart';
// import 'package:mobbit/model/associates.dart';
// import 'package:mobbit/utils.dart';

// class AssociateData extends ChangeNotifier {
//   static const String _boxName = "associatesBox";

//   List<Associates> _associates = [];

//   Associates? _activeAssociate;

//   void getAssociates() async {
//     var box = await Hive.openBox<Associates>(_boxName);
//     _associates = box.values.toList();

//     notifyListeners();
//   }

//   Associates getAssociate(index) {
//     return _associates[index];
//   }

//   void addAssociates(Associates associates) async {
//     var box = await Hive.openBox<Associates>(_boxName);
//     await box.add(associates);
//     _associates = box.values.toList();

//     notifyListeners();
//   }
  
//   void deleteAssociates(key) async {
//     var box = await Hive.openBox<Associates>(_boxName);
//     await box.delete(key);
//     _associates = box.values.toList();
//     Log.i("Deleted member with " + key.toString());

//     notifyListeners();
//   }

//   void editAssociate(
//       {required Associates associates, required int associateKey}) async {
//     var box = await Hive.openBox<Associates>(_boxName);
//     await box.put(associateKey, associates);

//     _associates = box.values.toList();
//     _activeAssociate = box.get(associateKey);

//     Log.i('Edited' + associates.name);

//     notifyListeners();
//   }

//   setActiveAssociate(key) async {
//     var box = await Hive.openBox<Associates>(_boxName);
//     _activeAssociate = box.get(key);

//     notifyListeners();
//   }

//   Associates getActiveAssociate() {
//     return _activeAssociate as Associates;
//   }

//   int get associatesCount {
//     return _associates.length;
//   }
// }
