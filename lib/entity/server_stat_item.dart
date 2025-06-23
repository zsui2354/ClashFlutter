import 'package:drift/drift.dart';

class ServerStatItems extends Table {
  IntColumn     get indexId => integer()(); // 外键
  IntColumn     get totalUp => integer()();
  IntColumn     get totalDown => integer()();
  IntColumn     get todayUp => integer()();
  IntColumn     get todayDown => integer()();
  IntColumn     get dateNow => integer()(); // Unix timestamp
}
