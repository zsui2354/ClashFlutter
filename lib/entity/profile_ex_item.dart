import 'package:drift/drift.dart';

class ProfileExItems extends Table {
  IntColumn     get indexId => integer()(); // 外键关联 ProfileItems.indexId
  IntColumn     get delay => integer().nullable()();
  RealColumn    get speed => real().nullable()();
  IntColumn     get sort => integer().nullable()();
}
