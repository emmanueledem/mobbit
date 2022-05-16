import 'package:flutter/foundation.dart';
import 'package:hive/hive.dart';
import 'package:mobbit/model/notes.dart';

class NotesProvider extends ChangeNotifier {
  bool fetchedAll = false;
  List _noteList = <Notes>[];
  List _initialList = <Notes>[];
  List get noteList => _noteList;

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
}
