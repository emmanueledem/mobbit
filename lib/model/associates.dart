import 'package:hive/hive.dart';

part 'associates.g.dart';

@HiveType(typeId: 0)
class Associates {
  @HiveField(0)
  final String name;
  @HiveField(1)
  final String? phone;
  @HiveField(2)
  final bool? isSenior;
  @HiveField(3)
  final DateTime? joinDate;
  @HiveField(4)
  final int? age;

  Associates(
      {required this.name, this.phone, this.isSenior, this.joinDate, this.age});
}
