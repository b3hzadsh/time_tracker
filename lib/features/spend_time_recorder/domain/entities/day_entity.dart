import 'package:isar/isar.dart';

import 'hour_entity.dart';
part 'day_entity.g.dart';
@Collection()
class Day {
  Id id = Isar.autoIncrement;

  @Index(unique: true)
  DateTime dateTime;

  Day({required this.dateTime});

  @Backlink(to: 'day')
  final hours = IsarLinks<Hour>();
}
