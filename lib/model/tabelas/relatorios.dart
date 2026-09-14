import 'package:drift/drift.dart';
import 'package:chapeudecouro/model/tabelas/clientes.dart';

class Relatorio extends Table {
  @override
  String get tableName => 'relatorios';

  IntColumn get id => integer().autoIncrement()();
  TextColumn get identificador => text().unique()();
  // Chave estrangeira para a tabela Cliente
  IntColumn get clienteId => integer().references(Cliente, #id)();
  // 0 - Web, 1 - Mobile, 2 - Desktop
  IntColumn get tipoRelatorio => integer()();
  // 0 - Pendente, 1 - Em andamento, 2 - Concluído
  IntColumn get status => integer()();
  DateTimeColumn get dataInicio => dateTime()();
  DateTimeColumn get dataFim => dateTime().nullable()();
  DateTimeColumn get criadoEm => dateTime()();
  DateTimeColumn get atualizadoEm => dateTime()();
}
