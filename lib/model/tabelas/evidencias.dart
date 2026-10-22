import 'package:drift/drift.dart';
import 'package:chapeudecouro/model/tabelas/vulnerabilidades.dart';

class Evidencia extends Table {
  @override
  String get tableName => 'evidencias';

  IntColumn get id => integer().autoIncrement()();
  TextColumn get identificador => text().unique()();
  IntColumn get vulnerabilidadeId =>
      integer().references(Vulnerabilidade, #id)();
  TextColumn get caminho => text()();
  TextColumn get arquivo => text()();
  TextColumn get tipo => text()();

  TextColumn get descricao => text().nullable()();
  IntColumn get ordem => integer()();

  DateTimeColumn get criadoEm => dateTime()();
  DateTimeColumn get atualizadoEm => dateTime()();
  BoolColumn get arquivado => boolean().withDefault(const Constant(false))();
  TextColumn get anotacoes => text().nullable()();
}
