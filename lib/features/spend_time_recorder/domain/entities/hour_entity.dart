import 'package:isar/isar.dart';
import 'category_entity.dart';
import 'day_entity.dart';
part 'hour_entity.g.dart';

@Collection()
class Hour {
  int hour;
  Id id = Isar.autoIncrement;

  @Index(unique: false)
  final day = IsarLink<Day>();
  @Index(unique: false)
  final cat = IsarLink<HCategory>();

  Hour({required this.hour});
}
