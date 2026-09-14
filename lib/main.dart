import 'package:flutter/material.dart';
import 'package:logging/logging.dart';
import 'package:provider/provider.dart';
import 'package:chapeudecouro/model/banco.dart';
import 'package:chapeudecouro/view/clientes.dart';

void main() {
  Logger.root.level = Level.ALL;
  Logger.root.onRecord.listen((record) {
    // // ignore: avoid_print
    // print('${record.level.name}: ${record.time}: ${record.message}');
    debugPrint(
      '${record.level.name}: '
      '${record.time}: '
      '${record.loggerName}: '
      '${record.message}',
    );
  });
  // Ensure that plugin services are initialized so that `getApplicationSupportDirectory` can be called before `runApp`.
  // WidgetsFlutterBinding.ensureInitialized();
  //runApp(const MyApp());
  runApp(
    Provider(
      create: (_) => AppDatabase(),
      dispose: (_, database) => database.close(),
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Chapéu de Couro',
      theme: ThemeData(colorScheme: .fromSeed(seedColor: Colors.deepPurple)),
      home: const MyHomePage(title: 'Início :: Chapéu de Couro'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  final String title;

  const MyHomePage({super.key, required this.title});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Wrap(
          spacing: 16.0,
          runSpacing: 16.0,
          alignment: WrapAlignment.center,
          children: <Widget>[
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const ListarClientes(),
                  ),
                );
              },
              child: const Text('Clientes'),
            ),
          ],
        ),
      ),
    );
  }
}
