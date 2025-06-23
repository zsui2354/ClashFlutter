import 'package:drift/drift.dart';

class DNSItems extends Table {
  IntColumn     get id => integer().autoIncrement()(); // 自动增长主键
  TextColumn    get remarks => text().nullable()();
  IntColumn     get enabled => integer()(); // 0 or 1
  IntColumn     get coreType => integer()();
  IntColumn     get useSystemHosts => integer()(); // 0 or 1
  TextColumn    get normalDNS => text().nullable()();
  TextColumn    get tunDNS => text().nullable()();
  TextColumn    get domainStrategy4Freedom => text().nullable()();
  TextColumn    get domainDNSAddress => text().nullable()();
}
