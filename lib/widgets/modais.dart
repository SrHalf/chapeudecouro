import 'package:flutter/material.dart';

class ModalOpcoesTabela extends StatelessWidget {
  final VoidCallback? callbackEditar;
  final VoidCallback? callbackLigar;
  final VoidCallback? callbackEnviarEmail;
  const ModalOpcoesTabela({
    super.key,
    required this.callbackEditar,
    required this.callbackLigar,
    required this.callbackEnviarEmail,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8.0),
      width: double.infinity,
      height: MediaQuery.sizeOf(context).height / 2,
      child: Column(
        children: [
          Container(
            width: 64,
            height: 4,
            decoration: BoxDecoration(
              color: Colors.grey,
              borderRadius: BorderRadius.circular(16),
            ),
          ),
          SizedBox(height: 8.0),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  ListTile(
                    leading: Icon(Icons.edit),
                    title: Text("Editar"),
                    onTap: callbackEditar,
                  ),
                  ListTile(
                    leading: Icon(Icons.phone),
                    title: Text("Ligar"),
                    onTap: callbackLigar,
                  ),
                  ListTile(
                    leading: Icon(Icons.email),
                    title: Text("Enviar E-mail"),
                    onTap: callbackEnviarEmail,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
