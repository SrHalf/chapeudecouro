import 'package:flutter/material.dart';
import 'package:phone_form_field/phone_form_field.dart';

class CampoIdentificador extends StatelessWidget {
  final TextEditingController? controller;
  final String label;

  const CampoIdentificador({super.key, this.controller, this.label = 'ID'});

  /// Gera um ID aleatório de 8 caracteres.
  /// Usado sempre que um novo registro de cliente, tecnico ou ordem for criado.
  /// Ainda será preciso consultar o banco de dados para garantir que o ID gerado não exista, mas a probabilidade de colisão é muito baixa.
  /// Veja: https://pub.dev/packages/nanoid2
  /// Talvez seja útil chamar após a tela for totalmente desenhada, para evitar que o ID mude a cada rebuild do widget.
  // String _gerarID() {
  //   return nanoid(length: 8, alphabet: '0123456789abcdef');
  // }

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      readOnly: true,
      controller: controller,
      decoration: InputDecoration(
        border: const OutlineInputBorder(),
        labelText: label,
        prefixIcon: const Icon(Icons.numbers),
      ),
      keyboardType: TextInputType.number,
    );
  }
}

class CampoNome extends StatelessWidget {
  final String label;
  final TextEditingController? controller;
  final String? Function(String?)? validator; // Para um validador externo.
  //final IconData prefixIcon;

  const CampoNome({
    super.key,
    this.label = 'Nome', // Valor padrão caso não seja informado
    this.controller,
    this.validator,
    //this.prefixIcon = Icons.person, // Ícone padrão personalizável
  });

  String? _validarNome(String? value) {
    // Use a linha abaixo apenas se a validação do nome for feita 100% dentro
    // desta classe.
    return value == null || value.isEmpty ? 'Informe um nome válido.' : null;

    // 1. Se quem chamou o widget passou um validator próprio (externo), usa ele:
    // if (validator != null) {
    //   return validator!(value);
    // }
  }

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      validator: _validarNome,
      // Se usar const em InputDecoration, label não será acessível.
      decoration: InputDecoration(
        // Aqui const é válido pois nada dentro de OutlineBorder() muda.
        border: const OutlineInputBorder(),
        labelText: label,
        prefixIcon: const Icon(Icons.person),
      ),
    );
  }
}

class CampoCliente extends StatelessWidget {
  final String rotulo;
  final TextEditingController controlador;
  final String? Function(String?)? validador; // Para um validador externo.
  // Não fazemos uma validação padrão porque o email pode ser salvo vazio.

  const CampoCliente({
    super.key,
    required this.rotulo,
    required this.controlador,
    this.validador,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controlador,
      decoration: InputDecoration(
        labelText: rotulo,
        border: OutlineInputBorder(),
        prefixIcon: Icon(Icons.person),
      ),
    );
  }
}

class CampoEmpresa extends StatelessWidget {
  final String rotulo;
  final TextEditingController? controlador;
  final String? Function(String?)? validador; // Para um validador externo.

  const CampoEmpresa({
    super.key,
    this.rotulo = 'Empresa',
    this.controlador,
    this.validador,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controlador,
      decoration: InputDecoration(
        labelText: rotulo,
        border: OutlineInputBorder(),
        prefixIcon: Icon(Icons.business),
      ),
    );
  }
}

/// Campo de Telefone já com validação interna para telemóveis.
/// Veja: https://pub.dev/packages/phone_form_field
class CampoTelefone extends StatelessWidget {
  final PhoneController? controller;
  final String label;

  const CampoTelefone({super.key, this.controller, this.label = 'Telefone'});

  @override
  Widget build(BuildContext context) {
    return PhoneFormField(
      controller: controller,
      decoration: InputDecoration(
        border: const OutlineInputBorder(),
        labelText: label,
      ),
      validator: PhoneValidator.compose([PhoneValidator.validMobile(context)]),
      countrySelectorNavigator:
          const CountrySelectorNavigator.modalBottomSheet(),
    );
  }
}

class CampoEmail extends StatelessWidget {
  final String rotulo;
  final TextEditingController? controlador;
  final String? Function(String?)? validador; // Para um validador externo.

  const CampoEmail({
    super.key,
    this.rotulo = 'Email',
    this.controlador,
    this.validador,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controlador,
      decoration: InputDecoration(
        labelText: rotulo,
        border: OutlineInputBorder(),
        prefixIcon: Icon(Icons.email),
      ),
    );
  }
}

/// Campo padrão de anotações, mas sem validação.
class CampoAnotacoes extends StatelessWidget {
  final TextEditingController? controlador;
  final String rotulo;

  const CampoAnotacoes({
    super.key,
    this.controlador,
    this.rotulo = 'Anotações',
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controlador,
      decoration: InputDecoration(
        border: const OutlineInputBorder(),
        labelText: rotulo,
        prefixIcon: const Icon(Icons.notes),
      ),
      minLines: 3,
      maxLines: 10,
    );
  }
}
