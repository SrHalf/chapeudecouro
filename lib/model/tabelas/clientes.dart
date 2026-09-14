import 'package:drift/drift.dart';

class Cliente extends Table {
  @override
  String get tableName => 'clientes';

  IntColumn get id => integer().autoIncrement()();
  TextColumn get identificador => text().unique()();
  TextColumn get nome => text()();
  TextColumn get empresa => text().nullable().unique()();
  TextColumn get telefone => text().nullable().unique()();
  TextColumn get email => text().nullable().unique()();
  TextColumn get anotacoes => text().nullable()();
  DateTimeColumn get criadoEm => dateTime()();
  DateTimeColumn get atualizadoEm => dateTime()();
}
