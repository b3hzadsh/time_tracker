import 'package:isar/isar.dart';
part 'category_entity.g.dart';

@collection
class HCategory {
  Id id = Isar.autoIncrement;

  @Index(unique: true)
  late String name;

  late String color;
}
