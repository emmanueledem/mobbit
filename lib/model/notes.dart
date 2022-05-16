import 'package:hive/hive.dart';

part 'notes.g.dart';

@HiveType(typeId: 0)
class Notes {
  @HiveField(0)
  final String noteTitle;
  @HiveField(1)
  final String noteDescription;
  @HiveField(2)
  final DateTime dateAdded;
  @HiveField(3)
  final String noteColour;

  Notes(
      {required this.noteTitle,
      required this.noteDescription,
      required this.dateAdded,
      required this.noteColour});
}
