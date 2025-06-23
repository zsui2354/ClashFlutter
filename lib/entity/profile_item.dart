import 'package:drift/drift.dart';

class ProfileItems extends Table {
  IntColumn     get indexId => integer().autoIncrement()(); // 主键
  IntColumn     get configType => integer()();
  IntColumn     get configVersion => integer()();
  TextColumn    get address => text()();
  IntColumn     get port => integer()();
  TextColumn    get id => text()();
  IntColumn     get alterId => integer()();
  TextColumn    get security => text().nullable()();
  TextColumn    get network => text().nullable()();
  TextColumn    get remarks => text().nullable()();
  TextColumn    get headerType => text().nullable()();
  TextColumn    get requestHost => text().nullable()();
  TextColumn    get path => text().nullable()();
  TextColumn    get streamSecurity => text().nullable()();
  TextColumn    get allowInsecure => text().nullable()();
  TextColumn    get subid => text().nullable()();
  IntColumn     get isSub => integer()(); // bool
  TextColumn    get flow => text().nullable()();
  TextColumn    get sni => text().nullable()();
  TextColumn    get alpn => text().nullable()();
  IntColumn     get coreType => integer()();
  IntColumn     get preSocksPort => integer()();
  TextColumn    get fingerprint => text().nullable()();
  IntColumn     get displayLog => integer()(); // bool
  TextColumn    get publicKey => text().nullable()();
  TextColumn    get shortId => text().nullable()();
  TextColumn    get spiderX => text().nullable()();
}
