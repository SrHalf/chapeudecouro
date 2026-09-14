import 'package:drift/drift.dart';
import 'package:chapeudecouro/model/tabelas/relatorios.dart';

class Vulnerabilidade extends Table {
  IntColumn get id => integer().autoIncrement()();
  TextColumn get identificador => text().unique()();
  IntColumn get secaoId => integer().references(Relatorio, #id)();
  TextColumn get titulo => text()();
  TextColumn get descricao => text()();
  // 0 - Info, 1 - Baixa, 2 - Média 3 - Alta, 4 - Crítica
  IntColumn get severidade => integer()();
  TextColumn get pontuacaoCVSS => text()();
  TextColumn get impacto => text()();
  TextColumn get recomendacao => text()();
  TextColumn get referencias => text().nullable()();
  // 0 - Aberta, 1 - Em andamento, 2 - Resolvida
  IntColumn get status => integer()();
  DateTimeColumn get criadoEm => dateTime()();
  DateTimeColumn get atualizadoEm => dateTime()();
}
