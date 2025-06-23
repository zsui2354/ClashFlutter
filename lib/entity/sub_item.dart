import 'package:drift/drift.dart';

class SubItems extends Table {
  IntColumn     get id => integer().autoIncrement()();
  TextColumn    get remarks => text().nullable()();
  TextColumn    get url => text().nullable()();
  TextColumn    get moreUrl => text().nullable()();
  IntColumn     get enabled => integer().nullable()(); // bool
  TextColumn    get userAgent => text().nullable()();
  IntColumn     get sort => integer().nullable()();
  TextColumn    get filter => text().nullable()();
  IntColumn     get autoUpdateInterval => integer().nullable()();
  IntColumn     get updateTime => integer().nullable()();
  TextColumn    get convertTarget => text().nullable()();
  TextColumn    get prevProfile => text().nullable()();
  TextColumn    get nextProfile => text().nullable()();
}
