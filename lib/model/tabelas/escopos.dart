import 'package:drift/drift.dart';
import 'package:chapeudecouro/model/tabelas/relatorios.dart';

class Escopo extends Table {
  IntColumn get id => integer().autoIncrement()();
  TextColumn get identificador => text().unique()();
  IntColumn get relatorioId => integer().references(Relatorio, #id)();
  IntColumn get tipoEscopo => integer()();
  TextColumn get valor => text()();
  DateTimeColumn get criadoEm => dateTime()();
  DateTimeColumn get atualizadoEm => dateTime()();
}
