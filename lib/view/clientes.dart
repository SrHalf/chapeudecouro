import 'package:chapeudecouro/widgets/customizados.dart';
import 'package:drift/drift.dart' hide Column;
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:phone_form_field/phone_form_field.dart';
import 'package:chapeudecouro/model/banco.dart';
import 'package:provider/provider.dart';

// ========================== TELA LISTAR CLIENTES ==========================
class ListarClientes extends StatefulWidget {
  const ListarClientes({super.key});

  @override
  State<StatefulWidget> createState() => _ListarClientesState();
}

class _ListarClientesState extends State<ListarClientes> {
  final _ids = [];

  void selecionar(int id) {
    setState(() {
      if (_ids.contains(id)) {
        _ids.remove(id);
      } else {
        _ids.add(id);
      }
    });
    HapticFeedback.vibrate();
  }

  Widget _getOpcoesProduto() {
    return Row(
      children: [
        Text(_ids.length.toString()),
        Spacer(),
        IconButton(tooltip: "Editar", onPressed: () {}, icon: Icon(Icons.edit)),
        IconButton(
          tooltip: "Arquivar",
          onPressed: () {},
          icon: Icon(Icons.archive),
        ),
      ],
    );
  }

  Widget _trocarTituloOuOpcoes() {
    if (_ids.isEmpty) {
      return Text('Lista de Clientes');
    } else {
      return _getOpcoesProduto();
    }
  }

  Widget _getListTile(BuildContext context, int index, ClienteData cliente) {
    var titulo = "${cliente.nome} - ${cliente.empresa}";
    var subtitulo = "${cliente.identificador} - ${cliente.email}";
    var cor = Colors.white;
    Widget simbolo = Text(
      titulo.substring(0, 1).toUpperCase(),
      style: TextStyle(color: Colors.white),
    );
    if (_ids.contains(cliente.id)) {
      cor = Colors.lightBlueAccent;
      simbolo = Icon(Icons.check, color: Colors.white);
    }
    return Card(
      color: cor,
      child: ListTile(
        leading: GestureDetector(
          onTap: () {
            selecionar(cliente.id);
          },
          child: CircleAvatar(backgroundColor: Colors.red, child: simbolo),
        ),
        title: Text(titulo),
        subtitle: Text(subtitulo),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            if (_ids.isNotEmpty) {
              //Desfaz a seleção..
              setState(() {
                _ids.clear();
              });
            } else {
              Navigator.pop(context);
            }
          },
          icon: Icon(Icons.arrow_back),
        ),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: _trocarTituloOuOpcoes(),
        actions: [
          IconButton(
            icon: const Icon(Icons.add),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => CadastrarCliente()),
              );
            },
          ),
        ],
      ),
      body: Padding(
        padding: EdgeInsets.all(8.0),
        child: FutureBuilder(
          future: context.read<AppDatabase>().listarClientes(),
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              List<ClienteData> clientes = snapshot.data as List<ClienteData>;
              if (clientes.isEmpty) {
                return Center(child: Text("Esta lista está vazia."));
              }
              return ListView.builder(
                itemCount: clientes.length,
                itemBuilder: (context, index) {
                  return Dismissible(
                    key: Key(clientes[index].id.toString()),
                    background: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 16.0),
                      child: Row(
                        children: [
                          Expanded(
                            child: Container(
                              alignment: Alignment.centerLeft,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  const Icon(Icons.archive),
                                  const Text("Arquivar"),
                                ],
                              ),
                            ),
                          ),
                          Expanded(
                            child: Container(
                              alignment: Alignment.centerRight,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(Icons.archive),
                                  Text("Arquivar"),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    child: _getListTile(context, index, clientes[index]),
                  );
                },
              );
            } else if (snapshot.hasError) {
              return Center(child: Text("Algo deu errado!"));
            } else {
              return LinearProgressIndicator();
            }
          },
        ),
      ),
    );
  }
}

// ========================== TELA CADASTRAR CLIENTE ==========================
class CadastrarCliente extends StatefulWidget {
  const CadastrarCliente({super.key});

  @override
  State<CadastrarCliente> createState() => _CadastrarClienteState();
}

class _CadastrarClienteState extends State<CadastrarCliente> {
  final _editavel = false;
  //  final log = Logger('CadastrarCliente');
  //CadastrarCliente({super.key});

  final _formKey = GlobalKey<FormState>();
  final _identificadorController = TextEditingController();
  final _nomeController = TextEditingController();
  final _empresaController = TextEditingController();
  final _telefoneController = PhoneController(
    initialValue: PhoneNumber.parse("+55"),
  );
  final _emailController = TextEditingController();
  final _anotacoesController = TextEditingController();

  @override
  void dispose() {
    _identificadorController.dispose();
    _nomeController.dispose();
    _empresaController.dispose();
    _telefoneController.dispose();
    _emailController.dispose();
    _anotacoesController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text('Cadastrar Cliente'),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              if (_editavel)
                Padding(
                  padding: const EdgeInsets.only(bottom: 16.0),
                  child: CampoIdentificador(
                    controller: _identificadorController,
                  ),
                ),

              //Outra abordagem, Collection if:
              //if (_editavel) ...[//...[] se chama Spread Operator.
              //CampoIdentificador(controller: identificadorController),
              //SizedBox(height: 16),
              //],
              CampoNome(controller: _nomeController),
              const SizedBox(height: 16),

              CampoEmpresa(controlador: _empresaController),
              const SizedBox(height: 16),

              CampoTelefone(controller: _telefoneController),
              const SizedBox(height: 16),

              CampoEmail(controlador: _emailController),
              const SizedBox(height: 16),

              CampoAnotacoes(controlador: _anotacoesController),
              const SizedBox(height: 16),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          if (mounted) {
            if (_formKey.currentState!.validate()) {
              final agora = DateTime.now();
              var cliente = ClienteCompanion(
                identificador: Value(_identificadorController.text),
                nome: Value(_nomeController.text),
                empresa: Value(_empresaController.text),
                telefone: Value(_telefoneController.value.toString()),
                email: Value(_emailController.text),
                anotacoes: Value(_anotacoesController.text),
                criadoEm: Value(agora),
                atualizadoEm: Value(agora),
              );
              context.read<AppDatabase>().inserirCliente(cliente);
              Navigator.pop(context);
            } else {
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(content: Text('Por favor, corrija os erros.')),
              );
            }
          }
        },
        tooltip: 'Salvar',
        child: const Icon(Icons.save),
      ),
    );
  }
}
