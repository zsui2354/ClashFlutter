import 'package:drift/drift.dart';

class RoutingItems extends Table {
  IntColumn     get id => integer().autoIncrement()();
  TextColumn    get remarks => text().nullable()();
  TextColumn    get url => text().nullable()();
  TextColumn    get ruleSet => text().nullable()();
  IntColumn     get ruleNum => integer().nullable()();
  IntColumn     get enabled => integer().nullable()();
  IntColumn     get locked => integer().nullable()();
  TextColumn    get customIcon => text().nullable()();
  TextColumn    get customRulesetPath4Singbox => text().nullable()();
  TextColumn    get domainStrategy => text().nullable()();
  TextColumn    get domainStrategy4Singbox => text().nullable()();
  IntColumn     get sort => integer().nullable()();
}
