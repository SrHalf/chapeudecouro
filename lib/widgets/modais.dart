import 'package:flutter/material.dart';

class ModalOpcoesTabela extends StatelessWidget {
  final VoidCallback? onItemPressed;
  const ModalOpcoesTabela({super.key, required this.onItemPressed});

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
                    onTap: onItemPressed,
                  ),
                  ListTile(
                    leading: Icon(Icons.copy),
                    title: Text("Copiar"),
                    onTap: onItemPressed,
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
