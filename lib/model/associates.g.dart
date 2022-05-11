// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'associates.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class AssociatesAdapter extends TypeAdapter<Associates> {
  @override
  final int typeId = 0;

  @override
  Associates read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Associates(
      name: fields[0] as String,
      phone: fields[1] as String?,
      isSenior: fields[2] as bool?,
      joinDate: fields[3] as DateTime?,
      age: fields[4] as int?,
    );
  }

  @override
  void write(BinaryWriter writer, Associates obj) {
    writer
      ..writeByte(5)
      ..writeByte(0)
      ..write(obj.name)
      ..writeByte(1)
      ..write(obj.phone)
      ..writeByte(2)
      ..write(obj.isSenior)
      ..writeByte(3)
      ..write(obj.joinDate)
      ..writeByte(4)
      ..write(obj.age);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is AssociatesAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
          
}
