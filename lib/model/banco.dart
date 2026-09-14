import 'package:drift/drift.dart';
import 'package:drift_flutter/drift_flutter.dart';
import 'package:path_provider/path_provider.dart';
import 'package:nanoid2/nanoid2.dart';
import 'package:logging/logging.dart';
//import 'package:path/path.dart' as p;
import 'package:chapeudecouro/model/tabelas/clientes.dart';
import 'package:chapeudecouro/model/tabelas/relatorios.dart';
import 'package:chapeudecouro/model/tabelas/secoes.dart';
import 'package:chapeudecouro/model/tabelas/vulnerabilidades.dart';
import 'package:chapeudecouro/model/tabelas/evidencias.dart';
import 'package:chapeudecouro/model/tabelas/escopos.dart';

part 'banco.g.dart';

// Quando adicionar uma nova tabela, chame: dart run build_runner build
@DriftDatabase(
  tables: [Cliente, Relatorio, Secao, Vulnerabilidade, Evidencia, Escopo],
)
class AppDatabase extends _$AppDatabase {
  AppDatabase([QueryExecutor? executor]) : super(executor ?? _openConnection());

  @override
  int get schemaVersion => 1;
  final _logger = Logger('BancoDeDados');

  // Add your database methods here
  static QueryExecutor _openConnection() {
    return driftDatabase(
      name: 'chapeu.db',
      native: const DriftNativeOptions(
        // By default, `driftDatabase` from `package:drift_flutter` stores the
        // database files in `getApplicationDocumentsDirectory()`.
        databaseDirectory: getApplicationSupportDirectory,
      ),
      // If you need web support, see https://drift.simonbinder.eu/platforms/web/
    );
  }

  Future<List<ClienteData>> listarClientes() {
    return (select(cliente)).get();
  }

  Future<void> limparTabelaClientes() async {
    // Limpa a tabela inteira (usado apenas em desenvolvimento).
    await delete(cliente).go();
  }

  Future<int> inserirCliente(ClienteCompanion clienteCompanion) async {
    for (int tentativa = 0; tentativa < 5; tentativa++) {
      var id = nanoid(length: 8, alphabet: '0123456789abcdef');
      _logger.fine('Tentativa ${tentativa + 1}: Salvando cliente $id');

      try {
        final resultadoId = await into(cliente).insert(
          clienteCompanion.copyWith(identificador: Value(id)),
          // Caso o ID seja repetido, ele não faz nada. Nem mesmo lança exceção.
          onConflict: DoNothing(),
        );
        // Retornando um ID maior que 0, então deu certo.
        if (resultadoId > 0) {
          return resultadoId;
        }
        _logger.warning('ID $id já existia. Tentando gerar outro...');
      } catch (erro, stackTrace) {
        // Usar 'catch (erro)' sem o 'on Exception' garante que capturamos
        // QUALQUER erro ou falha do SQLite (SqliteException, NullThrownError, etc.)
        _logger.severe('Erro crítico no banco de dados:', erro, stackTrace);
        rethrow; // Se for outro tipo de erro (ex: coluna faltando), para o loop para você ver o bug
      }
    }
    throw Exception(
      'Não foi possível gerar um identificador único após 5 tentativas.',
    );

    // while (true) {
    //   var id = nanoid(length: 8, alphabet: '0123456789abcdef');
    //   try {
    //     _logger.fine('Salvando cliente $id');
    //     return await into(
    //       cliente,
    //     ).insert(clienteCompanion.copyWith(identificador: Value(id)));
    //   } on Exception catch (erro, stackTrace) {
    //     // IMPORTANTE: Eu deveria fazer com que a verificação do identificador
    //     // abrangesse todas as tabelas, pois eu não apenas não quero que o
    //     // identificador se repita na mesma tabela, mas que também não se repita
    //     // entre tabelas.
    //     //
    //     // "Ah mas qual a chance?". Ok, eu não tenho resposta pra isso,
    //     // apenas ansiedade.
    //     _logger.severe(
    //       'O identificador gerado já existe! Gerando outro..',
    //       erro,
    //       stackTrace,
    //     );
    //   }
    // }
  }
}
