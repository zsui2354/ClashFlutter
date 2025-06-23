import 'package:drift/drift.dart';
import 'package:drift/native.dart';
import 'dart:io';
import 'package:path_provider/path_provider.dart';
import 'package:path/path.dart' as p;

import 'package:flutter_application_1/entity/dns_item.dart';// 引入表
import 'package:flutter_application_1/entity/profile_item.dart';

part 'app_database.g.dart';

@DriftDatabase(
  tables: [DNSItems, ProfileItems]
)
class AppDatabase extends _$AppDatabase {
  AppDatabase() : super(_openConnection());

  @override
  int get schemaVersion => 1;

  @override
  MigrationStrategy get migration => MigrationStrategy(
    onCreate: (m) => m.createAll(),
    onUpgrade: (m, from, to) async {
      // version 升级时处理
    }
  );
}

LazyDatabase _openConnection() {
  return LazyDatabase(() async {
    final dir = await getApplicationDocumentsDirectory();
    final file = File(p.join(dir.path, 'data', 'app.sqlite'));

    if (!(await file.parent.exists())) {
      await file.parent.create(recursive: true);
    }

    return NativeDatabase(file);
  });
}
