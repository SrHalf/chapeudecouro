import 'package:drift/drift.dart';
import 'package:chapeudecouro/model/tabelas/relatorios.dart';

class Secao extends Table {
  @override
  String get tableName => 'secoes';

  IntColumn get id => integer().autoIncrement()();
  TextColumn get identificador => text().unique()();
  IntColumn get relatorioId => integer().references(Relatorio, #id)();
  // 0 - Introdução, 1 - Desenvolvimento, 2 - Conclusão
  IntColumn get tipoSecao => integer()();
  TextColumn get conteudo => text()();
  IntColumn get ordem => integer()();
  DateTimeColumn get criadoEm => dateTime()();
  DateTimeColumn get atualizadoEm => dateTime()();
}
