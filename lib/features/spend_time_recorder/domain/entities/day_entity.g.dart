// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'day_entity.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetDayCollection on Isar {
  IsarCollection<Day> get days => this.collection();
}

const DaySchema = CollectionSchema(
  name: r'Day',
  id: 4355558770213572104,
  properties: {
    r'dateTime': PropertySchema(
      id: 0,
      name: r'dateTime',
      type: IsarType.dateTime,
    )
  },
  estimateSize: _dayEstimateSize,
  serialize: _daySerialize,
  deserialize: _dayDeserialize,
  deserializeProp: _dayDeserializeProp,
  idName: r'id',
  indexes: {
    r'dateTime': IndexSchema(
      id: -138851979697481250,
      name: r'dateTime',
      unique: true,
      replace: false,
      properties: [
        IndexPropertySchema(
          name: r'dateTime',
          type: IndexType.value,
          caseSensitive: false,
        )
      ],
    )
  },
  links: {
    r'hours': LinkSchema(
      id: 5982020225950071874,
      name: r'hours',
      target: r'Hour',
      single: false,
      linkName: r'day',
    )
  },
  embeddedSchemas: {},
  getId: _dayGetId,
  getLinks: _dayGetLinks,
  attach: _dayAttach,
  version: '3.1.0+1',
);

int _dayEstimateSize(
  Day object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  return bytesCount;
}

void _daySerialize(
  Day object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeDateTime(offsets[0], object.dateTime);
}

Day _dayDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = Day(
    dateTime: reader.readDateTime(offsets[0]),
  );
  object.id = id;
  return object;
}

P _dayDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readDateTime(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _dayGetId(Day object) {
  return object.id;
}

List<IsarLinkBase<dynamic>> _dayGetLinks(Day object) {
  return [object.hours];
}

void _dayAttach(IsarCollection<dynamic> col, Id id, Day object) {
  object.id = id;
  object.hours.attach(col, col.isar.collection<Hour>(), r'hours', id);
}

extension DayByIndex on IsarCollection<Day> {
  Future<Day?> getByDateTime(DateTime dateTime) {
    return getByIndex(r'dateTime', [dateTime]);
  }

  Day? getByDateTimeSync(DateTime dateTime) {
    return getByIndexSync(r'dateTime', [dateTime]);
  }

  Future<bool> deleteByDateTime(DateTime dateTime) {
    return deleteByIndex(r'dateTime', [dateTime]);
  }

  bool deleteByDateTimeSync(DateTime dateTime) {
    return deleteByIndexSync(r'dateTime', [dateTime]);
  }

  Future<List<Day?>> getAllByDateTime(List<DateTime> dateTimeValues) {
    final values = dateTimeValues.map((e) => [e]).toList();
    return getAllByIndex(r'dateTime', values);
  }

  List<Day?> getAllByDateTimeSync(List<DateTime> dateTimeValues) {
    final values = dateTimeValues.map((e) => [e]).toList();
    return getAllByIndexSync(r'dateTime', values);
  }

  Future<int> deleteAllByDateTime(List<DateTime> dateTimeValues) {
    final values = dateTimeValues.map((e) => [e]).toList();
    return deleteAllByIndex(r'dateTime', values);
  }

  int deleteAllByDateTimeSync(List<DateTime> dateTimeValues) {
    final values = dateTimeValues.map((e) => [e]).toList();
    return deleteAllByIndexSync(r'dateTime', values);
  }

  Future<Id> putByDateTime(Day object) {
    return putByIndex(r'dateTime', object);
  }

  Id putByDateTimeSync(Day object, {bool saveLinks = true}) {
    return putByIndexSync(r'dateTime', object, saveLinks: saveLinks);
  }

  Future<List<Id>> putAllByDateTime(List<Day> objects) {
    return putAllByIndex(r'dateTime', objects);
  }

  List<Id> putAllByDateTimeSync(List<Day> objects, {bool saveLinks = true}) {
    return putAllByIndexSync(r'dateTime', objects, saveLinks: saveLinks);
  }
}

extension DayQueryWhereSort on QueryBuilder<Day, Day, QWhere> {
  QueryBuilder<Day, Day, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }

  QueryBuilder<Day, Day, QAfterWhere> anyDateTime() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        const IndexWhereClause.any(indexName: r'dateTime'),
      );
    });
  }
}

extension DayQueryWhere on QueryBuilder<Day, Day, QWhereClause> {
  QueryBuilder<Day, Day, QAfterWhereClause> idEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<Day, Day, QAfterWhereClause> idNotEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(
              IdWhereClause.lessThan(upper: id, includeUpper: false),
            )
            .addWhereClause(
              IdWhereClause.greaterThan(lower: id, includeLower: false),
            );
      } else {
        return query
            .addWhereClause(
              IdWhereClause.greaterThan(lower: id, includeLower: false),
            )
            .addWhereClause(
              IdWhereClause.lessThan(upper: id, includeUpper: false),
            );
      }
    });
  }

  QueryBuilder<Day, Day, QAfterWhereClause> idGreaterThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<Day, Day, QAfterWhereClause> idLessThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<Day, Day, QAfterWhereClause> idBetween(
    Id lowerId,
    Id upperId, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: lowerId,
        includeLower: includeLower,
        upper: upperId,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<Day, Day, QAfterWhereClause> dateTimeEqualTo(DateTime dateTime) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'dateTime',
        value: [dateTime],
      ));
    });
  }

  QueryBuilder<Day, Day, QAfterWhereClause> dateTimeNotEqualTo(
      DateTime dateTime) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'dateTime',
              lower: [],
              upper: [dateTime],
              includeUpper: false,
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'dateTime',
              lower: [dateTime],
              includeLower: false,
              upper: [],
            ));
      } else {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'dateTime',
              lower: [dateTime],
              includeLower: false,
              upper: [],
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'dateTime',
              lower: [],
              upper: [dateTime],
              includeUpper: false,
            ));
      }
    });
  }

  QueryBuilder<Day, Day, QAfterWhereClause> dateTimeGreaterThan(
    DateTime dateTime, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'dateTime',
        lower: [dateTime],
        includeLower: include,
        upper: [],
      ));
    });
  }

  QueryBuilder<Day, Day, QAfterWhereClause> dateTimeLessThan(
    DateTime dateTime, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'dateTime',
        lower: [],
        upper: [dateTime],
        includeUpper: include,
      ));
    });
  }

  QueryBuilder<Day, Day, QAfterWhereClause> dateTimeBetween(
    DateTime lowerDateTime,
    DateTime upperDateTime, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'dateTime',
        lower: [lowerDateTime],
        includeLower: includeLower,
        upper: [upperDateTime],
        includeUpper: includeUpper,
      ));
    });
  }
}

extension DayQueryFilter on QueryBuilder<Day, Day, QFilterCondition> {
  QueryBuilder<Day, Day, QAfterFilterCondition> dateTimeEqualTo(
      DateTime value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'dateTime',
        value: value,
      ));
    });
  }

  QueryBuilder<Day, Day, QAfterFilterCondition> dateTimeGreaterThan(
    DateTime value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'dateTime',
        value: value,
      ));
    });
  }

  QueryBuilder<Day, Day, QAfterFilterCondition> dateTimeLessThan(
    DateTime value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'dateTime',
        value: value,
      ));
    });
  }

  QueryBuilder<Day, Day, QAfterFilterCondition> dateTimeBetween(
    DateTime lower,
    DateTime upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'dateTime',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<Day, Day, QAfterFilterCondition> idEqualTo(Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<Day, Day, QAfterFilterCondition> idGreaterThan(
    Id value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<Day, Day, QAfterFilterCondition> idLessThan(
    Id value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<Day, Day, QAfterFilterCondition> idBetween(
    Id lower,
    Id upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'id',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }
}

extension DayQueryObject on QueryBuilder<Day, Day, QFilterCondition> {}

extension DayQueryLinks on QueryBuilder<Day, Day, QFilterCondition> {
  QueryBuilder<Day, Day, QAfterFilterCondition> hours(FilterQuery<Hour> q) {
    return QueryBuilder.apply(this, (query) {
      return query.link(q, r'hours');
    });
  }

  QueryBuilder<Day, Day, QAfterFilterCondition> hoursLengthEqualTo(int length) {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(r'hours', length, true, length, true);
    });
  }

  QueryBuilder<Day, Day, QAfterFilterCondition> hoursIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(r'hours', 0, true, 0, true);
    });
  }

  QueryBuilder<Day, Day, QAfterFilterCondition> hoursIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(r'hours', 0, false, 999999, true);
    });
  }

  QueryBuilder<Day, Day, QAfterFilterCondition> hoursLengthLessThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(r'hours', 0, true, length, include);
    });
  }

  QueryBuilder<Day, Day, QAfterFilterCondition> hoursLengthGreaterThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(r'hours', length, include, 999999, true);
    });
  }

  QueryBuilder<Day, Day, QAfterFilterCondition> hoursLengthBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(
          r'hours', lower, includeLower, upper, includeUpper);
    });
  }
}

extension DayQuerySortBy on QueryBuilder<Day, Day, QSortBy> {
  QueryBuilder<Day, Day, QAfterSortBy> sortByDateTime() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'dateTime', Sort.asc);
    });
  }

  QueryBuilder<Day, Day, QAfterSortBy> sortByDateTimeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'dateTime', Sort.desc);
    });
  }
}

extension DayQuerySortThenBy on QueryBuilder<Day, Day, QSortThenBy> {
  QueryBuilder<Day, Day, QAfterSortBy> thenByDateTime() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'dateTime', Sort.asc);
    });
  }

  QueryBuilder<Day, Day, QAfterSortBy> thenByDateTimeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'dateTime', Sort.desc);
    });
  }

  QueryBuilder<Day, Day, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<Day, Day, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }
}

extension DayQueryWhereDistinct on QueryBuilder<Day, Day, QDistinct> {
  QueryBuilder<Day, Day, QDistinct> distinctByDateTime() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'dateTime');
    });
  }
}

extension DayQueryProperty on QueryBuilder<Day, Day, QQueryProperty> {
  QueryBuilder<Day, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<Day, DateTime, QQueryOperations> dateTimeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'dateTime');
    });
  }
}
