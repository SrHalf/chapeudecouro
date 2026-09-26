import 'package:chapeudecouro/widgets/customizados.dart';
import 'package:chapeudecouro/widgets/modais.dart';
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
  late Future<List<ClienteData>> _futureClientes;

  // Este método existe porque a listagem precisa ser feita mais de uma vez ao
  // longo do uso da tela pelo usuário. 1. Na abertura; 2. Após voltar da tela
  // de atualização/inserção.
  void _listarClientes() async {
    _futureClientes = context.read<AppDatabase>().listarClientes();
  }

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
        onTap: () async {
          await showModalBottomSheet(
            context: context,
            builder: (context) {
              return ModalOpcoesTabela(
                onItemPressed: () async {
                  await Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => CadastrarCliente(cliente: cliente),
                    ),
                  );
                  if (context.mounted) {
                    Navigator.pop(context);
                  }
                },
              );
            },
          );
          setState(() {
            // Atualiza a lista após voltar da edição.
            _listarClientes();
          });
        },
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
  void initState() {
    super.initState();
    _listarClientes();
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
          future: _futureClientes,
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
                    background: Container(
                      color: Colors.red,
                      child: Icon(Icons.archive),
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
  final ClienteData? cliente;
  const CadastrarCliente({super.key, this.cliente});

  @override
  State<CadastrarCliente> createState() => _CadastrarClienteState();
}

class _CadastrarClienteState extends State<CadastrarCliente> {
  final _formKey = GlobalKey<FormState>();
  late final TextEditingController _identificadorController;
  late final TextEditingController _nomeController;
  late final TextEditingController _empresaController;
  late final PhoneController _telefoneController;
  late final TextEditingController _emailController;
  late final TextEditingController _anotacoesController;

  @override
  void initState() {
    super.initState();
    _identificadorController = TextEditingController(
      text: widget.cliente?.identificador ?? '',
    );
    _nomeController = TextEditingController(text: widget.cliente?.nome ?? '');
    _empresaController = TextEditingController(
      text: widget.cliente?.empresa ?? '',
    );
    _telefoneController = PhoneController(
      initialValue: PhoneNumber.parse(widget.cliente?.telefone ?? '+55'),
    );
    _emailController = TextEditingController(text: widget.cliente?.email ?? '');
    _anotacoesController = TextEditingController(
      text: widget.cliente?.anotacoes ?? '',
    );
  }

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
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              if (widget.cliente != null)
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

              if (widget.cliente != null)
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Criado em: ${widget.cliente!.criadoEm}',
                      style: TextStyle(fontSize: 12, color: Colors.black),
                    ),
                    SizedBox(height: 4),
                    Text(
                      'Atualizado em: ${widget.cliente!.atualizadoEm}',
                      style: TextStyle(fontSize: 12, color: Colors.black),
                    ),
                  ],
                ),
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
              if (widget.cliente != null) {
                var clienteAtualizado = widget.cliente!.copyWith(
                  nome: _nomeController.text,
                  empresa: Value(_empresaController.text),
                  telefone: Value(_telefoneController.value.toString()),
                  email: Value(_emailController.text),
                  anotacoes: Value(_anotacoesController.text),
                  atualizadoEm: agora,
                );
                context.read<AppDatabase>().atualizarCliente(clienteAtualizado);
              } else {
                context.read<AppDatabase>().inserirCliente(cliente);
              }
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
