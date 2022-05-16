import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:hive/hive.dart';
import 'package:mobbit/model/notes.dart';

class NotesProvider extends ChangeNotifier {
  bool fetchedAll = false;
  List _noteList = <Notes>[];
  List _initialList = <Notes>[];
  List get noteList => _noteList;
  Color? colorCode;

  Future addNote(Notes item) async {
    var box = await Hive.openBox<Notes>('notes');
    box.add(item);
    notifyListeners();
  }

  Future getNotes() async {
    final box = await Hive.openBox<Notes>('notes');
    _initialList = box.values.toList();
    _noteList = List.from(_initialList.reversed);
    fetchedAll = true;
    notifyListeners();
  }

  Future sortNotes(order) async {
    final box = await Hive.openBox<Notes>('notes');
    if (order == 'oldest') {
      _noteList = box.values.toList();
      fetchedAll = true;
    } else {
      _initialList = box.values.toList();
      _noteList = List.from(_initialList.reversed);
      fetchedAll = true;
    }
    notifyListeners();
  }

  void editNote() {}

  void deleteSingleNote() {}

  void deleteAllNotes() async {
    var box = await Hive.openBox<Notes>('notes');
    await box.deleteFromDisk();
    getNotes();
    _initialList = box.values.toList();
    notifyListeners();
  }

  void colorPicker() {
    int number = Random().nextInt(5) + 1;
    if (number == 2) {
      colorCode = const Color.fromARGB(255, 169, 240, 171);
    } else if (number == 3) {
      colorCode = const Color.fromARGB(255, 243, 239, 28);
    } else if (number == 4) {
      colorCode = Color.fromARGB(255, 223, 96, 57);
    } else if (number == 5) {
      colorCode = const Color.fromARGB(255, 118, 56, 146);
    }
    notifyListeners();
  }
}
