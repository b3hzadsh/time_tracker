// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'hour_entity.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetHourCollection on Isar {
  IsarCollection<Hour> get hours => this.collection();
}

const HourSchema = CollectionSchema(
  name: r'Hour',
  id: 4882143820703650787,
  properties: {
    r'hour': PropertySchema(
      id: 0,
      name: r'hour',
      type: IsarType.long,
    )
  },
  estimateSize: _hourEstimateSize,
  serialize: _hourSerialize,
  deserialize: _hourDeserialize,
  deserializeProp: _hourDeserializeProp,
  idName: r'id',
  indexes: {},
  links: {
    r'day': LinkSchema(
      id: 3454041121360919721,
      name: r'day',
      target: r'Day',
      single: true,
    ),
    r'cat': LinkSchema(
      id: 5221989390922668771,
      name: r'cat',
      target: r'HCategory',
      single: true,
    )
  },
  embeddedSchemas: {},
  getId: _hourGetId,
  getLinks: _hourGetLinks,
  attach: _hourAttach,
  version: '3.1.0+1',
);

int _hourEstimateSize(
  Hour object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  return bytesCount;
}

void _hourSerialize(
  Hour object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeLong(offsets[0], object.hour);
}

Hour _hourDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = Hour(
    hour: reader.readLong(offsets[0]),
  );
  object.id = id;
  return object;
}

P _hourDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readLong(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _hourGetId(Hour object) {
  return object.id;
}

List<IsarLinkBase<dynamic>> _hourGetLinks(Hour object) {
  return [object.day, object.cat];
}

void _hourAttach(IsarCollection<dynamic> col, Id id, Hour object) {
  object.id = id;
  object.day.attach(col, col.isar.collection<Day>(), r'day', id);
  object.cat.attach(col, col.isar.collection<HCategory>(), r'cat', id);
}

extension HourQueryWhereSort on QueryBuilder<Hour, Hour, QWhere> {
  QueryBuilder<Hour, Hour, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension HourQueryWhere on QueryBuilder<Hour, Hour, QWhereClause> {
  QueryBuilder<Hour, Hour, QAfterWhereClause> idEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<Hour, Hour, QAfterWhereClause> idNotEqualTo(Id id) {
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

  QueryBuilder<Hour, Hour, QAfterWhereClause> idGreaterThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<Hour, Hour, QAfterWhereClause> idLessThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<Hour, Hour, QAfterWhereClause> idBetween(
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
}

extension HourQueryFilter on QueryBuilder<Hour, Hour, QFilterCondition> {
  QueryBuilder<Hour, Hour, QAfterFilterCondition> hourEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'hour',
        value: value,
      ));
    });
  }

  QueryBuilder<Hour, Hour, QAfterFilterCondition> hourGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'hour',
        value: value,
      ));
    });
  }

  QueryBuilder<Hour, Hour, QAfterFilterCondition> hourLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'hour',
        value: value,
      ));
    });
  }

  QueryBuilder<Hour, Hour, QAfterFilterCondition> hourBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'hour',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<Hour, Hour, QAfterFilterCondition> idEqualTo(Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<Hour, Hour, QAfterFilterCondition> idGreaterThan(
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

  QueryBuilder<Hour, Hour, QAfterFilterCondition> idLessThan(
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

  QueryBuilder<Hour, Hour, QAfterFilterCondition> idBetween(
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

extension HourQueryObject on QueryBuilder<Hour, Hour, QFilterCondition> {}

extension HourQueryLinks on QueryBuilder<Hour, Hour, QFilterCondition> {
  QueryBuilder<Hour, Hour, QAfterFilterCondition> day(FilterQuery<Day> q) {
    return QueryBuilder.apply(this, (query) {
      return query.link(q, r'day');
    });
  }

  QueryBuilder<Hour, Hour, QAfterFilterCondition> dayIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(r'day', 0, true, 0, true);
    });
  }

  QueryBuilder<Hour, Hour, QAfterFilterCondition> cat(
      FilterQuery<HCategory> q) {
    return QueryBuilder.apply(this, (query) {
      return query.link(q, r'cat');
    });
  }

  QueryBuilder<Hour, Hour, QAfterFilterCondition> catIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(r'cat', 0, true, 0, true);
    });
  }
}

extension HourQuerySortBy on QueryBuilder<Hour, Hour, QSortBy> {
  QueryBuilder<Hour, Hour, QAfterSortBy> sortByHour() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'hour', Sort.asc);
    });
  }

  QueryBuilder<Hour, Hour, QAfterSortBy> sortByHourDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'hour', Sort.desc);
    });
  }
}

extension HourQuerySortThenBy on QueryBuilder<Hour, Hour, QSortThenBy> {
  QueryBuilder<Hour, Hour, QAfterSortBy> thenByHour() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'hour', Sort.asc);
    });
  }

  QueryBuilder<Hour, Hour, QAfterSortBy> thenByHourDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'hour', Sort.desc);
    });
  }

  QueryBuilder<Hour, Hour, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<Hour, Hour, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }
}

extension HourQueryWhereDistinct on QueryBuilder<Hour, Hour, QDistinct> {
  QueryBuilder<Hour, Hour, QDistinct> distinctByHour() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'hour');
    });
  }
}

extension HourQueryProperty on QueryBuilder<Hour, Hour, QQueryProperty> {
  QueryBuilder<Hour, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<Hour, int, QQueryOperations> hourProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'hour');
    });
  }
}
