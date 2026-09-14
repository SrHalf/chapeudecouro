// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'banco.dart';

// ignore_for_file: type=lint
class $ClienteTable extends Cliente with TableInfo<$ClienteTable, ClienteData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $ClienteTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
    'id',
    aliasedName,
    false,
    hasAutoIncrement: true,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'PRIMARY KEY AUTOINCREMENT',
    ),
  );
  static const VerificationMeta _identificadorMeta = const VerificationMeta(
    'identificador',
  );
  @override
  late final GeneratedColumn<String> identificador = GeneratedColumn<String>(
    'identificador',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
    defaultConstraints: GeneratedColumn.constraintIsAlways('UNIQUE'),
  );
  static const VerificationMeta _nomeMeta = const VerificationMeta('nome');
  @override
  late final GeneratedColumn<String> nome = GeneratedColumn<String>(
    'nome',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _empresaMeta = const VerificationMeta(
    'empresa',
  );
  @override
  late final GeneratedColumn<String> empresa = GeneratedColumn<String>(
    'empresa',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
    defaultConstraints: GeneratedColumn.constraintIsAlways('UNIQUE'),
  );
  static const VerificationMeta _telefoneMeta = const VerificationMeta(
    'telefone',
  );
  @override
  late final GeneratedColumn<String> telefone = GeneratedColumn<String>(
    'telefone',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
    defaultConstraints: GeneratedColumn.constraintIsAlways('UNIQUE'),
  );
  static const VerificationMeta _emailMeta = const VerificationMeta('email');
  @override
  late final GeneratedColumn<String> email = GeneratedColumn<String>(
    'email',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
    defaultConstraints: GeneratedColumn.constraintIsAlways('UNIQUE'),
  );
  static const VerificationMeta _anotacoesMeta = const VerificationMeta(
    'anotacoes',
  );
  @override
  late final GeneratedColumn<String> anotacoes = GeneratedColumn<String>(
    'anotacoes',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _criadoEmMeta = const VerificationMeta(
    'criadoEm',
  );
  @override
  late final GeneratedColumn<DateTime> criadoEm = GeneratedColumn<DateTime>(
    'criado_em',
    aliasedName,
    false,
    type: DriftSqlType.dateTime,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _atualizadoEmMeta = const VerificationMeta(
    'atualizadoEm',
  );
  @override
  late final GeneratedColumn<DateTime> atualizadoEm = GeneratedColumn<DateTime>(
    'atualizado_em',
    aliasedName,
    false,
    type: DriftSqlType.dateTime,
    requiredDuringInsert: true,
  );
  @override
  List<GeneratedColumn> get $columns => [
    id,
    identificador,
    nome,
    empresa,
    telefone,
    email,
    anotacoes,
    criadoEm,
    atualizadoEm,
  ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'clientes';
  @override
  VerificationContext validateIntegrity(
    Insertable<ClienteData> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('identificador')) {
      context.handle(
        _identificadorMeta,
        identificador.isAcceptableOrUnknown(
          data['identificador']!,
          _identificadorMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_identificadorMeta);
    }
    if (data.containsKey('nome')) {
      context.handle(
        _nomeMeta,
        nome.isAcceptableOrUnknown(data['nome']!, _nomeMeta),
      );
    } else if (isInserting) {
      context.missing(_nomeMeta);
    }
    if (data.containsKey('empresa')) {
      context.handle(
        _empresaMeta,
        empresa.isAcceptableOrUnknown(data['empresa']!, _empresaMeta),
      );
    }
    if (data.containsKey('telefone')) {
      context.handle(
        _telefoneMeta,
        telefone.isAcceptableOrUnknown(data['telefone']!, _telefoneMeta),
      );
    }
    if (data.containsKey('email')) {
      context.handle(
        _emailMeta,
        email.isAcceptableOrUnknown(data['email']!, _emailMeta),
      );
    }
    if (data.containsKey('anotacoes')) {
      context.handle(
        _anotacoesMeta,
        anotacoes.isAcceptableOrUnknown(data['anotacoes']!, _anotacoesMeta),
      );
    }
    if (data.containsKey('criado_em')) {
      context.handle(
        _criadoEmMeta,
        criadoEm.isAcceptableOrUnknown(data['criado_em']!, _criadoEmMeta),
      );
    } else if (isInserting) {
      context.missing(_criadoEmMeta);
    }
    if (data.containsKey('atualizado_em')) {
      context.handle(
        _atualizadoEmMeta,
        atualizadoEm.isAcceptableOrUnknown(
          data['atualizado_em']!,
          _atualizadoEmMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_atualizadoEmMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  ClienteData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return ClienteData(
      id: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}id'],
      )!,
      identificador: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}identificador'],
      )!,
      nome: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}nome'],
      )!,
      empresa: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}empresa'],
      ),
      telefone: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}telefone'],
      ),
      email: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}email'],
      ),
      anotacoes: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}anotacoes'],
      ),
      criadoEm: attachedDatabase.typeMapping.read(
        DriftSqlType.dateTime,
        data['${effectivePrefix}criado_em'],
      )!,
      atualizadoEm: attachedDatabase.typeMapping.read(
        DriftSqlType.dateTime,
        data['${effectivePrefix}atualizado_em'],
      )!,
    );
  }

  @override
  $ClienteTable createAlias(String alias) {
    return $ClienteTable(attachedDatabase, alias);
  }
}

class ClienteData extends DataClass implements Insertable<ClienteData> {
  final int id;
  final String identificador;
  final String nome;
  final String? empresa;
  final String? telefone;
  final String? email;
  final String? anotacoes;
  final DateTime criadoEm;
  final DateTime atualizadoEm;
  const ClienteData({
    required this.id,
    required this.identificador,
    required this.nome,
    this.empresa,
    this.telefone,
    this.email,
    this.anotacoes,
    required this.criadoEm,
    required this.atualizadoEm,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['identificador'] = Variable<String>(identificador);
    map['nome'] = Variable<String>(nome);
    if (!nullToAbsent || empresa != null) {
      map['empresa'] = Variable<String>(empresa);
    }
    if (!nullToAbsent || telefone != null) {
      map['telefone'] = Variable<String>(telefone);
    }
    if (!nullToAbsent || email != null) {
      map['email'] = Variable<String>(email);
    }
    if (!nullToAbsent || anotacoes != null) {
      map['anotacoes'] = Variable<String>(anotacoes);
    }
    map['criado_em'] = Variable<DateTime>(criadoEm);
    map['atualizado_em'] = Variable<DateTime>(atualizadoEm);
    return map;
  }

  ClienteCompanion toCompanion(bool nullToAbsent) {
    return ClienteCompanion(
      id: Value(id),
      identificador: Value(identificador),
      nome: Value(nome),
      empresa: empresa == null && nullToAbsent
          ? const Value.absent()
          : Value(empresa),
      telefone: telefone == null && nullToAbsent
          ? const Value.absent()
          : Value(telefone),
      email: email == null && nullToAbsent
          ? const Value.absent()
          : Value(email),
      anotacoes: anotacoes == null && nullToAbsent
          ? const Value.absent()
          : Value(anotacoes),
      criadoEm: Value(criadoEm),
      atualizadoEm: Value(atualizadoEm),
    );
  }

  factory ClienteData.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return ClienteData(
      id: serializer.fromJson<int>(json['id']),
      identificador: serializer.fromJson<String>(json['identificador']),
      nome: serializer.fromJson<String>(json['nome']),
      empresa: serializer.fromJson<String?>(json['empresa']),
      telefone: serializer.fromJson<String?>(json['telefone']),
      email: serializer.fromJson<String?>(json['email']),
      anotacoes: serializer.fromJson<String?>(json['anotacoes']),
      criadoEm: serializer.fromJson<DateTime>(json['criadoEm']),
      atualizadoEm: serializer.fromJson<DateTime>(json['atualizadoEm']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'identificador': serializer.toJson<String>(identificador),
      'nome': serializer.toJson<String>(nome),
      'empresa': serializer.toJson<String?>(empresa),
      'telefone': serializer.toJson<String?>(telefone),
      'email': serializer.toJson<String?>(email),
      'anotacoes': serializer.toJson<String?>(anotacoes),
      'criadoEm': serializer.toJson<DateTime>(criadoEm),
      'atualizadoEm': serializer.toJson<DateTime>(atualizadoEm),
    };
  }

  ClienteData copyWith({
    int? id,
    String? identificador,
    String? nome,
    Value<String?> empresa = const Value.absent(),
    Value<String?> telefone = const Value.absent(),
    Value<String?> email = const Value.absent(),
    Value<String?> anotacoes = const Value.absent(),
    DateTime? criadoEm,
    DateTime? atualizadoEm,
  }) => ClienteData(
    id: id ?? this.id,
    identificador: identificador ?? this.identificador,
    nome: nome ?? this.nome,
    empresa: empresa.present ? empresa.value : this.empresa,
    telefone: telefone.present ? telefone.value : this.telefone,
    email: email.present ? email.value : this.email,
    anotacoes: anotacoes.present ? anotacoes.value : this.anotacoes,
    criadoEm: criadoEm ?? this.criadoEm,
    atualizadoEm: atualizadoEm ?? this.atualizadoEm,
  );
  ClienteData copyWithCompanion(ClienteCompanion data) {
    return ClienteData(
      id: data.id.present ? data.id.value : this.id,
      identificador: data.identificador.present
          ? data.identificador.value
          : this.identificador,
      nome: data.nome.present ? data.nome.value : this.nome,
      empresa: data.empresa.present ? data.empresa.value : this.empresa,
      telefone: data.telefone.present ? data.telefone.value : this.telefone,
      email: data.email.present ? data.email.value : this.email,
      anotacoes: data.anotacoes.present ? data.anotacoes.value : this.anotacoes,
      criadoEm: data.criadoEm.present ? data.criadoEm.value : this.criadoEm,
      atualizadoEm: data.atualizadoEm.present
          ? data.atualizadoEm.value
          : this.atualizadoEm,
    );
  }

  @override
  String toString() {
    return (StringBuffer('ClienteData(')
          ..write('id: $id, ')
          ..write('identificador: $identificador, ')
          ..write('nome: $nome, ')
          ..write('empresa: $empresa, ')
          ..write('telefone: $telefone, ')
          ..write('email: $email, ')
          ..write('anotacoes: $anotacoes, ')
          ..write('criadoEm: $criadoEm, ')
          ..write('atualizadoEm: $atualizadoEm')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
    id,
    identificador,
    nome,
    empresa,
    telefone,
    email,
    anotacoes,
    criadoEm,
    atualizadoEm,
  );
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is ClienteData &&
          other.id == this.id &&
          other.identificador == this.identificador &&
          other.nome == this.nome &&
          other.empresa == this.empresa &&
          other.telefone == this.telefone &&
          other.email == this.email &&
          other.anotacoes == this.anotacoes &&
          other.criadoEm == this.criadoEm &&
          other.atualizadoEm == this.atualizadoEm);
}

class ClienteCompanion extends UpdateCompanion<ClienteData> {
  final Value<int> id;
  final Value<String> identificador;
  final Value<String> nome;
  final Value<String?> empresa;
  final Value<String?> telefone;
  final Value<String?> email;
  final Value<String?> anotacoes;
  final Value<DateTime> criadoEm;
  final Value<DateTime> atualizadoEm;
  const ClienteCompanion({
    this.id = const Value.absent(),
    this.identificador = const Value.absent(),
    this.nome = const Value.absent(),
    this.empresa = const Value.absent(),
    this.telefone = const Value.absent(),
    this.email = const Value.absent(),
    this.anotacoes = const Value.absent(),
    this.criadoEm = const Value.absent(),
    this.atualizadoEm = const Value.absent(),
  });
  ClienteCompanion.insert({
    this.id = const Value.absent(),
    required String identificador,
    required String nome,
    this.empresa = const Value.absent(),
    this.telefone = const Value.absent(),
    this.email = const Value.absent(),
    this.anotacoes = const Value.absent(),
    required DateTime criadoEm,
    required DateTime atualizadoEm,
  }) : identificador = Value(identificador),
       nome = Value(nome),
       criadoEm = Value(criadoEm),
       atualizadoEm = Value(atualizadoEm);
  static Insertable<ClienteData> custom({
    Expression<int>? id,
    Expression<String>? identificador,
    Expression<String>? nome,
    Expression<String>? empresa,
    Expression<String>? telefone,
    Expression<String>? email,
    Expression<String>? anotacoes,
    Expression<DateTime>? criadoEm,
    Expression<DateTime>? atualizadoEm,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (identificador != null) 'identificador': identificador,
      if (nome != null) 'nome': nome,
      if (empresa != null) 'empresa': empresa,
      if (telefone != null) 'telefone': telefone,
      if (email != null) 'email': email,
      if (anotacoes != null) 'anotacoes': anotacoes,
      if (criadoEm != null) 'criado_em': criadoEm,
      if (atualizadoEm != null) 'atualizado_em': atualizadoEm,
    });
  }

  ClienteCompanion copyWith({
    Value<int>? id,
    Value<String>? identificador,
    Value<String>? nome,
    Value<String?>? empresa,
    Value<String?>? telefone,
    Value<String?>? email,
    Value<String?>? anotacoes,
    Value<DateTime>? criadoEm,
    Value<DateTime>? atualizadoEm,
  }) {
    return ClienteCompanion(
      id: id ?? this.id,
      identificador: identificador ?? this.identificador,
      nome: nome ?? this.nome,
      empresa: empresa ?? this.empresa,
      telefone: telefone ?? this.telefone,
      email: email ?? this.email,
      anotacoes: anotacoes ?? this.anotacoes,
      criadoEm: criadoEm ?? this.criadoEm,
      atualizadoEm: atualizadoEm ?? this.atualizadoEm,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (identificador.present) {
      map['identificador'] = Variable<String>(identificador.value);
    }
    if (nome.present) {
      map['nome'] = Variable<String>(nome.value);
    }
    if (empresa.present) {
      map['empresa'] = Variable<String>(empresa.value);
    }
    if (telefone.present) {
      map['telefone'] = Variable<String>(telefone.value);
    }
    if (email.present) {
      map['email'] = Variable<String>(email.value);
    }
    if (anotacoes.present) {
      map['anotacoes'] = Variable<String>(anotacoes.value);
    }
    if (criadoEm.present) {
      map['criado_em'] = Variable<DateTime>(criadoEm.value);
    }
    if (atualizadoEm.present) {
      map['atualizado_em'] = Variable<DateTime>(atualizadoEm.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('ClienteCompanion(')
          ..write('id: $id, ')
          ..write('identificador: $identificador, ')
          ..write('nome: $nome, ')
          ..write('empresa: $empresa, ')
          ..write('telefone: $telefone, ')
          ..write('email: $email, ')
          ..write('anotacoes: $anotacoes, ')
          ..write('criadoEm: $criadoEm, ')
          ..write('atualizadoEm: $atualizadoEm')
          ..write(')'))
        .toString();
  }
}

class $RelatorioTable extends Relatorio
    with TableInfo<$RelatorioTable, RelatorioData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $RelatorioTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
    'id',
    aliasedName,
    false,
    hasAutoIncrement: true,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'PRIMARY KEY AUTOINCREMENT',
    ),
  );
  static const VerificationMeta _identificadorMeta = const VerificationMeta(
    'identificador',
  );
  @override
  late final GeneratedColumn<String> identificador = GeneratedColumn<String>(
    'identificador',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
    defaultConstraints: GeneratedColumn.constraintIsAlways('UNIQUE'),
  );
  static const VerificationMeta _clienteIdMeta = const VerificationMeta(
    'clienteId',
  );
  @override
  late final GeneratedColumn<int> clienteId = GeneratedColumn<int>(
    'cliente_id',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'REFERENCES clientes (id)',
    ),
  );
  static const VerificationMeta _tipoRelatorioMeta = const VerificationMeta(
    'tipoRelatorio',
  );
  @override
  late final GeneratedColumn<int> tipoRelatorio = GeneratedColumn<int>(
    'tipo_relatorio',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _statusMeta = const VerificationMeta('status');
  @override
  late final GeneratedColumn<int> status = GeneratedColumn<int>(
    'status',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _dataInicioMeta = const VerificationMeta(
    'dataInicio',
  );
  @override
  late final GeneratedColumn<DateTime> dataInicio = GeneratedColumn<DateTime>(
    'data_inicio',
    aliasedName,
    false,
    type: DriftSqlType.dateTime,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _dataFimMeta = const VerificationMeta(
    'dataFim',
  );
  @override
  late final GeneratedColumn<DateTime> dataFim = GeneratedColumn<DateTime>(
    'data_fim',
    aliasedName,
    true,
    type: DriftSqlType.dateTime,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _criadoEmMeta = const VerificationMeta(
    'criadoEm',
  );
  @override
  late final GeneratedColumn<DateTime> criadoEm = GeneratedColumn<DateTime>(
    'criado_em',
    aliasedName,
    false,
    type: DriftSqlType.dateTime,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _atualizadoEmMeta = const VerificationMeta(
    'atualizadoEm',
  );
  @override
  late final GeneratedColumn<DateTime> atualizadoEm = GeneratedColumn<DateTime>(
    'atualizado_em',
    aliasedName,
    false,
    type: DriftSqlType.dateTime,
    requiredDuringInsert: true,
  );
  @override
  List<GeneratedColumn> get $columns => [
    id,
    identificador,
    clienteId,
    tipoRelatorio,
    status,
    dataInicio,
    dataFim,
    criadoEm,
    atualizadoEm,
  ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'relatorios';
  @override
  VerificationContext validateIntegrity(
    Insertable<RelatorioData> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('identificador')) {
      context.handle(
        _identificadorMeta,
        identificador.isAcceptableOrUnknown(
          data['identificador']!,
          _identificadorMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_identificadorMeta);
    }
    if (data.containsKey('cliente_id')) {
      context.handle(
        _clienteIdMeta,
        clienteId.isAcceptableOrUnknown(data['cliente_id']!, _clienteIdMeta),
      );
    } else if (isInserting) {
      context.missing(_clienteIdMeta);
    }
    if (data.containsKey('tipo_relatorio')) {
      context.handle(
        _tipoRelatorioMeta,
        tipoRelatorio.isAcceptableOrUnknown(
          data['tipo_relatorio']!,
          _tipoRelatorioMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_tipoRelatorioMeta);
    }
    if (data.containsKey('status')) {
      context.handle(
        _statusMeta,
        status.isAcceptableOrUnknown(data['status']!, _statusMeta),
      );
    } else if (isInserting) {
      context.missing(_statusMeta);
    }
    if (data.containsKey('data_inicio')) {
      context.handle(
        _dataInicioMeta,
        dataInicio.isAcceptableOrUnknown(data['data_inicio']!, _dataInicioMeta),
      );
    } else if (isInserting) {
      context.missing(_dataInicioMeta);
    }
    if (data.containsKey('data_fim')) {
      context.handle(
        _dataFimMeta,
        dataFim.isAcceptableOrUnknown(data['data_fim']!, _dataFimMeta),
      );
    }
    if (data.containsKey('criado_em')) {
      context.handle(
        _criadoEmMeta,
        criadoEm.isAcceptableOrUnknown(data['criado_em']!, _criadoEmMeta),
      );
    } else if (isInserting) {
      context.missing(_criadoEmMeta);
    }
    if (data.containsKey('atualizado_em')) {
      context.handle(
        _atualizadoEmMeta,
        atualizadoEm.isAcceptableOrUnknown(
          data['atualizado_em']!,
          _atualizadoEmMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_atualizadoEmMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  RelatorioData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return RelatorioData(
      id: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}id'],
      )!,
      identificador: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}identificador'],
      )!,
      clienteId: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}cliente_id'],
      )!,
      tipoRelatorio: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}tipo_relatorio'],
      )!,
      status: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}status'],
      )!,
      dataInicio: attachedDatabase.typeMapping.read(
        DriftSqlType.dateTime,
        data['${effectivePrefix}data_inicio'],
      )!,
      dataFim: attachedDatabase.typeMapping.read(
        DriftSqlType.dateTime,
        data['${effectivePrefix}data_fim'],
      ),
      criadoEm: attachedDatabase.typeMapping.read(
        DriftSqlType.dateTime,
        data['${effectivePrefix}criado_em'],
      )!,
      atualizadoEm: attachedDatabase.typeMapping.read(
        DriftSqlType.dateTime,
        data['${effectivePrefix}atualizado_em'],
      )!,
    );
  }

  @override
  $RelatorioTable createAlias(String alias) {
    return $RelatorioTable(attachedDatabase, alias);
  }
}

class RelatorioData extends DataClass implements Insertable<RelatorioData> {
  final int id;
  final String identificador;
  final int clienteId;
  final int tipoRelatorio;
  final int status;
  final DateTime dataInicio;
  final DateTime? dataFim;
  final DateTime criadoEm;
  final DateTime atualizadoEm;
  const RelatorioData({
    required this.id,
    required this.identificador,
    required this.clienteId,
    required this.tipoRelatorio,
    required this.status,
    required this.dataInicio,
    this.dataFim,
    required this.criadoEm,
    required this.atualizadoEm,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['identificador'] = Variable<String>(identificador);
    map['cliente_id'] = Variable<int>(clienteId);
    map['tipo_relatorio'] = Variable<int>(tipoRelatorio);
    map['status'] = Variable<int>(status);
    map['data_inicio'] = Variable<DateTime>(dataInicio);
    if (!nullToAbsent || dataFim != null) {
      map['data_fim'] = Variable<DateTime>(dataFim);
    }
    map['criado_em'] = Variable<DateTime>(criadoEm);
    map['atualizado_em'] = Variable<DateTime>(atualizadoEm);
    return map;
  }

  RelatorioCompanion toCompanion(bool nullToAbsent) {
    return RelatorioCompanion(
      id: Value(id),
      identificador: Value(identificador),
      clienteId: Value(clienteId),
      tipoRelatorio: Value(tipoRelatorio),
      status: Value(status),
      dataInicio: Value(dataInicio),
      dataFim: dataFim == null && nullToAbsent
          ? const Value.absent()
          : Value(dataFim),
      criadoEm: Value(criadoEm),
      atualizadoEm: Value(atualizadoEm),
    );
  }

  factory RelatorioData.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return RelatorioData(
      id: serializer.fromJson<int>(json['id']),
      identificador: serializer.fromJson<String>(json['identificador']),
      clienteId: serializer.fromJson<int>(json['clienteId']),
      tipoRelatorio: serializer.fromJson<int>(json['tipoRelatorio']),
      status: serializer.fromJson<int>(json['status']),
      dataInicio: serializer.fromJson<DateTime>(json['dataInicio']),
      dataFim: serializer.fromJson<DateTime?>(json['dataFim']),
      criadoEm: serializer.fromJson<DateTime>(json['criadoEm']),
      atualizadoEm: serializer.fromJson<DateTime>(json['atualizadoEm']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'identificador': serializer.toJson<String>(identificador),
      'clienteId': serializer.toJson<int>(clienteId),
      'tipoRelatorio': serializer.toJson<int>(tipoRelatorio),
      'status': serializer.toJson<int>(status),
      'dataInicio': serializer.toJson<DateTime>(dataInicio),
      'dataFim': serializer.toJson<DateTime?>(dataFim),
      'criadoEm': serializer.toJson<DateTime>(criadoEm),
      'atualizadoEm': serializer.toJson<DateTime>(atualizadoEm),
    };
  }

  RelatorioData copyWith({
    int? id,
    String? identificador,
    int? clienteId,
    int? tipoRelatorio,
    int? status,
    DateTime? dataInicio,
    Value<DateTime?> dataFim = const Value.absent(),
    DateTime? criadoEm,
    DateTime? atualizadoEm,
  }) => RelatorioData(
    id: id ?? this.id,
    identificador: identificador ?? this.identificador,
    clienteId: clienteId ?? this.clienteId,
    tipoRelatorio: tipoRelatorio ?? this.tipoRelatorio,
    status: status ?? this.status,
    dataInicio: dataInicio ?? this.dataInicio,
    dataFim: dataFim.present ? dataFim.value : this.dataFim,
    criadoEm: criadoEm ?? this.criadoEm,
    atualizadoEm: atualizadoEm ?? this.atualizadoEm,
  );
  RelatorioData copyWithCompanion(RelatorioCompanion data) {
    return RelatorioData(
      id: data.id.present ? data.id.value : this.id,
      identificador: data.identificador.present
          ? data.identificador.value
          : this.identificador,
      clienteId: data.clienteId.present ? data.clienteId.value : this.clienteId,
      tipoRelatorio: data.tipoRelatorio.present
          ? data.tipoRelatorio.value
          : this.tipoRelatorio,
      status: data.status.present ? data.status.value : this.status,
      dataInicio: data.dataInicio.present
          ? data.dataInicio.value
          : this.dataInicio,
      dataFim: data.dataFim.present ? data.dataFim.value : this.dataFim,
      criadoEm: data.criadoEm.present ? data.criadoEm.value : this.criadoEm,
      atualizadoEm: data.atualizadoEm.present
          ? data.atualizadoEm.value
          : this.atualizadoEm,
    );
  }

  @override
  String toString() {
    return (StringBuffer('RelatorioData(')
          ..write('id: $id, ')
          ..write('identificador: $identificador, ')
          ..write('clienteId: $clienteId, ')
          ..write('tipoRelatorio: $tipoRelatorio, ')
          ..write('status: $status, ')
          ..write('dataInicio: $dataInicio, ')
          ..write('dataFim: $dataFim, ')
          ..write('criadoEm: $criadoEm, ')
          ..write('atualizadoEm: $atualizadoEm')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
    id,
    identificador,
    clienteId,
    tipoRelatorio,
    status,
    dataInicio,
    dataFim,
    criadoEm,
    atualizadoEm,
  );
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is RelatorioData &&
          other.id == this.id &&
          other.identificador == this.identificador &&
          other.clienteId == this.clienteId &&
          other.tipoRelatorio == this.tipoRelatorio &&
          other.status == this.status &&
          other.dataInicio == this.dataInicio &&
          other.dataFim == this.dataFim &&
          other.criadoEm == this.criadoEm &&
          other.atualizadoEm == this.atualizadoEm);
}

class RelatorioCompanion extends UpdateCompanion<RelatorioData> {
  final Value<int> id;
  final Value<String> identificador;
  final Value<int> clienteId;
  final Value<int> tipoRelatorio;
  final Value<int> status;
  final Value<DateTime> dataInicio;
  final Value<DateTime?> dataFim;
  final Value<DateTime> criadoEm;
  final Value<DateTime> atualizadoEm;
  const RelatorioCompanion({
    this.id = const Value.absent(),
    this.identificador = const Value.absent(),
    this.clienteId = const Value.absent(),
    this.tipoRelatorio = const Value.absent(),
    this.status = const Value.absent(),
    this.dataInicio = const Value.absent(),
    this.dataFim = const Value.absent(),
    this.criadoEm = const Value.absent(),
    this.atualizadoEm = const Value.absent(),
  });
  RelatorioCompanion.insert({
    this.id = const Value.absent(),
    required String identificador,
    required int clienteId,
    required int tipoRelatorio,
    required int status,
    required DateTime dataInicio,
    this.dataFim = const Value.absent(),
    required DateTime criadoEm,
    required DateTime atualizadoEm,
  }) : identificador = Value(identificador),
       clienteId = Value(clienteId),
       tipoRelatorio = Value(tipoRelatorio),
       status = Value(status),
       dataInicio = Value(dataInicio),
       criadoEm = Value(criadoEm),
       atualizadoEm = Value(atualizadoEm);
  static Insertable<RelatorioData> custom({
    Expression<int>? id,
    Expression<String>? identificador,
    Expression<int>? clienteId,
    Expression<int>? tipoRelatorio,
    Expression<int>? status,
    Expression<DateTime>? dataInicio,
    Expression<DateTime>? dataFim,
    Expression<DateTime>? criadoEm,
    Expression<DateTime>? atualizadoEm,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (identificador != null) 'identificador': identificador,
      if (clienteId != null) 'cliente_id': clienteId,
      if (tipoRelatorio != null) 'tipo_relatorio': tipoRelatorio,
      if (status != null) 'status': status,
      if (dataInicio != null) 'data_inicio': dataInicio,
      if (dataFim != null) 'data_fim': dataFim,
      if (criadoEm != null) 'criado_em': criadoEm,
      if (atualizadoEm != null) 'atualizado_em': atualizadoEm,
    });
  }

  RelatorioCompanion copyWith({
    Value<int>? id,
    Value<String>? identificador,
    Value<int>? clienteId,
    Value<int>? tipoRelatorio,
    Value<int>? status,
    Value<DateTime>? dataInicio,
    Value<DateTime?>? dataFim,
    Value<DateTime>? criadoEm,
    Value<DateTime>? atualizadoEm,
  }) {
    return RelatorioCompanion(
      id: id ?? this.id,
      identificador: identificador ?? this.identificador,
      clienteId: clienteId ?? this.clienteId,
      tipoRelatorio: tipoRelatorio ?? this.tipoRelatorio,
      status: status ?? this.status,
      dataInicio: dataInicio ?? this.dataInicio,
      dataFim: dataFim ?? this.dataFim,
      criadoEm: criadoEm ?? this.criadoEm,
      atualizadoEm: atualizadoEm ?? this.atualizadoEm,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (identificador.present) {
      map['identificador'] = Variable<String>(identificador.value);
    }
    if (clienteId.present) {
      map['cliente_id'] = Variable<int>(clienteId.value);
    }
    if (tipoRelatorio.present) {
      map['tipo_relatorio'] = Variable<int>(tipoRelatorio.value);
    }
    if (status.present) {
      map['status'] = Variable<int>(status.value);
    }
    if (dataInicio.present) {
      map['data_inicio'] = Variable<DateTime>(dataInicio.value);
    }
    if (dataFim.present) {
      map['data_fim'] = Variable<DateTime>(dataFim.value);
    }
    if (criadoEm.present) {
      map['criado_em'] = Variable<DateTime>(criadoEm.value);
    }
    if (atualizadoEm.present) {
      map['atualizado_em'] = Variable<DateTime>(atualizadoEm.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('RelatorioCompanion(')
          ..write('id: $id, ')
          ..write('identificador: $identificador, ')
          ..write('clienteId: $clienteId, ')
          ..write('tipoRelatorio: $tipoRelatorio, ')
          ..write('status: $status, ')
          ..write('dataInicio: $dataInicio, ')
          ..write('dataFim: $dataFim, ')
          ..write('criadoEm: $criadoEm, ')
          ..write('atualizadoEm: $atualizadoEm')
          ..write(')'))
        .toString();
  }
}

class $SecaoTable extends Secao with TableInfo<$SecaoTable, SecaoData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $SecaoTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
    'id',
    aliasedName,
    false,
    hasAutoIncrement: true,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'PRIMARY KEY AUTOINCREMENT',
    ),
  );
  static const VerificationMeta _identificadorMeta = const VerificationMeta(
    'identificador',
  );
  @override
  late final GeneratedColumn<String> identificador = GeneratedColumn<String>(
    'identificador',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
    defaultConstraints: GeneratedColumn.constraintIsAlways('UNIQUE'),
  );
  static const VerificationMeta _relatorioIdMeta = const VerificationMeta(
    'relatorioId',
  );
  @override
  late final GeneratedColumn<int> relatorioId = GeneratedColumn<int>(
    'relatorio_id',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'REFERENCES relatorios (id)',
    ),
  );
  static const VerificationMeta _tipoSecaoMeta = const VerificationMeta(
    'tipoSecao',
  );
  @override
  late final GeneratedColumn<int> tipoSecao = GeneratedColumn<int>(
    'tipo_secao',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _conteudoMeta = const VerificationMeta(
    'conteudo',
  );
  @override
  late final GeneratedColumn<String> conteudo = GeneratedColumn<String>(
    'conteudo',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _ordemMeta = const VerificationMeta('ordem');
  @override
  late final GeneratedColumn<int> ordem = GeneratedColumn<int>(
    'ordem',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _criadoEmMeta = const VerificationMeta(
    'criadoEm',
  );
  @override
  late final GeneratedColumn<DateTime> criadoEm = GeneratedColumn<DateTime>(
    'criado_em',
    aliasedName,
    false,
    type: DriftSqlType.dateTime,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _atualizadoEmMeta = const VerificationMeta(
    'atualizadoEm',
  );
  @override
  late final GeneratedColumn<DateTime> atualizadoEm = GeneratedColumn<DateTime>(
    'atualizado_em',
    aliasedName,
    false,
    type: DriftSqlType.dateTime,
    requiredDuringInsert: true,
  );
  @override
  List<GeneratedColumn> get $columns => [
    id,
    identificador,
    relatorioId,
    tipoSecao,
    conteudo,
    ordem,
    criadoEm,
    atualizadoEm,
  ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'secoes';
  @override
  VerificationContext validateIntegrity(
    Insertable<SecaoData> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('identificador')) {
      context.handle(
        _identificadorMeta,
        identificador.isAcceptableOrUnknown(
          data['identificador']!,
          _identificadorMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_identificadorMeta);
    }
    if (data.containsKey('relatorio_id')) {
      context.handle(
        _relatorioIdMeta,
        relatorioId.isAcceptableOrUnknown(
          data['relatorio_id']!,
          _relatorioIdMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_relatorioIdMeta);
    }
    if (data.containsKey('tipo_secao')) {
      context.handle(
        _tipoSecaoMeta,
        tipoSecao.isAcceptableOrUnknown(data['tipo_secao']!, _tipoSecaoMeta),
      );
    } else if (isInserting) {
      context.missing(_tipoSecaoMeta);
    }
    if (data.containsKey('conteudo')) {
      context.handle(
        _conteudoMeta,
        conteudo.isAcceptableOrUnknown(data['conteudo']!, _conteudoMeta),
      );
    } else if (isInserting) {
      context.missing(_conteudoMeta);
    }
    if (data.containsKey('ordem')) {
      context.handle(
        _ordemMeta,
        ordem.isAcceptableOrUnknown(data['ordem']!, _ordemMeta),
      );
    } else if (isInserting) {
      context.missing(_ordemMeta);
    }
    if (data.containsKey('criado_em')) {
      context.handle(
        _criadoEmMeta,
        criadoEm.isAcceptableOrUnknown(data['criado_em']!, _criadoEmMeta),
      );
    } else if (isInserting) {
      context.missing(_criadoEmMeta);
    }
    if (data.containsKey('atualizado_em')) {
      context.handle(
        _atualizadoEmMeta,
        atualizadoEm.isAcceptableOrUnknown(
          data['atualizado_em']!,
          _atualizadoEmMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_atualizadoEmMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  SecaoData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return SecaoData(
      id: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}id'],
      )!,
      identificador: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}identificador'],
      )!,
      relatorioId: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}relatorio_id'],
      )!,
      tipoSecao: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}tipo_secao'],
      )!,
      conteudo: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}conteudo'],
      )!,
      ordem: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}ordem'],
      )!,
      criadoEm: attachedDatabase.typeMapping.read(
        DriftSqlType.dateTime,
        data['${effectivePrefix}criado_em'],
      )!,
      atualizadoEm: attachedDatabase.typeMapping.read(
        DriftSqlType.dateTime,
        data['${effectivePrefix}atualizado_em'],
      )!,
    );
  }

  @override
  $SecaoTable createAlias(String alias) {
    return $SecaoTable(attachedDatabase, alias);
  }
}

class SecaoData extends DataClass implements Insertable<SecaoData> {
  final int id;
  final String identificador;
  final int relatorioId;
  final int tipoSecao;
  final String conteudo;
  final int ordem;
  final DateTime criadoEm;
  final DateTime atualizadoEm;
  const SecaoData({
    required this.id,
    required this.identificador,
    required this.relatorioId,
    required this.tipoSecao,
    required this.conteudo,
    required this.ordem,
    required this.criadoEm,
    required this.atualizadoEm,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['identificador'] = Variable<String>(identificador);
    map['relatorio_id'] = Variable<int>(relatorioId);
    map['tipo_secao'] = Variable<int>(tipoSecao);
    map['conteudo'] = Variable<String>(conteudo);
    map['ordem'] = Variable<int>(ordem);
    map['criado_em'] = Variable<DateTime>(criadoEm);
    map['atualizado_em'] = Variable<DateTime>(atualizadoEm);
    return map;
  }

  SecaoCompanion toCompanion(bool nullToAbsent) {
    return SecaoCompanion(
      id: Value(id),
      identificador: Value(identificador),
      relatorioId: Value(relatorioId),
      tipoSecao: Value(tipoSecao),
      conteudo: Value(conteudo),
      ordem: Value(ordem),
      criadoEm: Value(criadoEm),
      atualizadoEm: Value(atualizadoEm),
    );
  }

  factory SecaoData.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return SecaoData(
      id: serializer.fromJson<int>(json['id']),
      identificador: serializer.fromJson<String>(json['identificador']),
      relatorioId: serializer.fromJson<int>(json['relatorioId']),
      tipoSecao: serializer.fromJson<int>(json['tipoSecao']),
      conteudo: serializer.fromJson<String>(json['conteudo']),
      ordem: serializer.fromJson<int>(json['ordem']),
      criadoEm: serializer.fromJson<DateTime>(json['criadoEm']),
      atualizadoEm: serializer.fromJson<DateTime>(json['atualizadoEm']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'identificador': serializer.toJson<String>(identificador),
      'relatorioId': serializer.toJson<int>(relatorioId),
      'tipoSecao': serializer.toJson<int>(tipoSecao),
      'conteudo': serializer.toJson<String>(conteudo),
      'ordem': serializer.toJson<int>(ordem),
      'criadoEm': serializer.toJson<DateTime>(criadoEm),
      'atualizadoEm': serializer.toJson<DateTime>(atualizadoEm),
    };
  }

  SecaoData copyWith({
    int? id,
    String? identificador,
    int? relatorioId,
    int? tipoSecao,
    String? conteudo,
    int? ordem,
    DateTime? criadoEm,
    DateTime? atualizadoEm,
  }) => SecaoData(
    id: id ?? this.id,
    identificador: identificador ?? this.identificador,
    relatorioId: relatorioId ?? this.relatorioId,
    tipoSecao: tipoSecao ?? this.tipoSecao,
    conteudo: conteudo ?? this.conteudo,
    ordem: ordem ?? this.ordem,
    criadoEm: criadoEm ?? this.criadoEm,
    atualizadoEm: atualizadoEm ?? this.atualizadoEm,
  );
  SecaoData copyWithCompanion(SecaoCompanion data) {
    return SecaoData(
      id: data.id.present ? data.id.value : this.id,
      identificador: data.identificador.present
          ? data.identificador.value
          : this.identificador,
      relatorioId: data.relatorioId.present
          ? data.relatorioId.value
          : this.relatorioId,
      tipoSecao: data.tipoSecao.present ? data.tipoSecao.value : this.tipoSecao,
      conteudo: data.conteudo.present ? data.conteudo.value : this.conteudo,
      ordem: data.ordem.present ? data.ordem.value : this.ordem,
      criadoEm: data.criadoEm.present ? data.criadoEm.value : this.criadoEm,
      atualizadoEm: data.atualizadoEm.present
          ? data.atualizadoEm.value
          : this.atualizadoEm,
    );
  }

  @override
  String toString() {
    return (StringBuffer('SecaoData(')
          ..write('id: $id, ')
          ..write('identificador: $identificador, ')
          ..write('relatorioId: $relatorioId, ')
          ..write('tipoSecao: $tipoSecao, ')
          ..write('conteudo: $conteudo, ')
          ..write('ordem: $ordem, ')
          ..write('criadoEm: $criadoEm, ')
          ..write('atualizadoEm: $atualizadoEm')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
    id,
    identificador,
    relatorioId,
    tipoSecao,
    conteudo,
    ordem,
    criadoEm,
    atualizadoEm,
  );
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is SecaoData &&
          other.id == this.id &&
          other.identificador == this.identificador &&
          other.relatorioId == this.relatorioId &&
          other.tipoSecao == this.tipoSecao &&
          other.conteudo == this.conteudo &&
          other.ordem == this.ordem &&
          other.criadoEm == this.criadoEm &&
          other.atualizadoEm == this.atualizadoEm);
}

class SecaoCompanion extends UpdateCompanion<SecaoData> {
  final Value<int> id;
  final Value<String> identificador;
  final Value<int> relatorioId;
  final Value<int> tipoSecao;
  final Value<String> conteudo;
  final Value<int> ordem;
  final Value<DateTime> criadoEm;
  final Value<DateTime> atualizadoEm;
  const SecaoCompanion({
    this.id = const Value.absent(),
    this.identificador = const Value.absent(),
    this.relatorioId = const Value.absent(),
    this.tipoSecao = const Value.absent(),
    this.conteudo = const Value.absent(),
    this.ordem = const Value.absent(),
    this.criadoEm = const Value.absent(),
    this.atualizadoEm = const Value.absent(),
  });
  SecaoCompanion.insert({
    this.id = const Value.absent(),
    required String identificador,
    required int relatorioId,
    required int tipoSecao,
    required String conteudo,
    required int ordem,
    required DateTime criadoEm,
    required DateTime atualizadoEm,
  }) : identificador = Value(identificador),
       relatorioId = Value(relatorioId),
       tipoSecao = Value(tipoSecao),
       conteudo = Value(conteudo),
       ordem = Value(ordem),
       criadoEm = Value(criadoEm),
       atualizadoEm = Value(atualizadoEm);
  static Insertable<SecaoData> custom({
    Expression<int>? id,
    Expression<String>? identificador,
    Expression<int>? relatorioId,
    Expression<int>? tipoSecao,
    Expression<String>? conteudo,
    Expression<int>? ordem,
    Expression<DateTime>? criadoEm,
    Expression<DateTime>? atualizadoEm,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (identificador != null) 'identificador': identificador,
      if (relatorioId != null) 'relatorio_id': relatorioId,
      if (tipoSecao != null) 'tipo_secao': tipoSecao,
      if (conteudo != null) 'conteudo': conteudo,
      if (ordem != null) 'ordem': ordem,
      if (criadoEm != null) 'criado_em': criadoEm,
      if (atualizadoEm != null) 'atualizado_em': atualizadoEm,
    });
  }

  SecaoCompanion copyWith({
    Value<int>? id,
    Value<String>? identificador,
    Value<int>? relatorioId,
    Value<int>? tipoSecao,
    Value<String>? conteudo,
    Value<int>? ordem,
    Value<DateTime>? criadoEm,
    Value<DateTime>? atualizadoEm,
  }) {
    return SecaoCompanion(
      id: id ?? this.id,
      identificador: identificador ?? this.identificador,
      relatorioId: relatorioId ?? this.relatorioId,
      tipoSecao: tipoSecao ?? this.tipoSecao,
      conteudo: conteudo ?? this.conteudo,
      ordem: ordem ?? this.ordem,
      criadoEm: criadoEm ?? this.criadoEm,
      atualizadoEm: atualizadoEm ?? this.atualizadoEm,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (identificador.present) {
      map['identificador'] = Variable<String>(identificador.value);
    }
    if (relatorioId.present) {
      map['relatorio_id'] = Variable<int>(relatorioId.value);
    }
    if (tipoSecao.present) {
      map['tipo_secao'] = Variable<int>(tipoSecao.value);
    }
    if (conteudo.present) {
      map['conteudo'] = Variable<String>(conteudo.value);
    }
    if (ordem.present) {
      map['ordem'] = Variable<int>(ordem.value);
    }
    if (criadoEm.present) {
      map['criado_em'] = Variable<DateTime>(criadoEm.value);
    }
    if (atualizadoEm.present) {
      map['atualizado_em'] = Variable<DateTime>(atualizadoEm.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('SecaoCompanion(')
          ..write('id: $id, ')
          ..write('identificador: $identificador, ')
          ..write('relatorioId: $relatorioId, ')
          ..write('tipoSecao: $tipoSecao, ')
          ..write('conteudo: $conteudo, ')
          ..write('ordem: $ordem, ')
          ..write('criadoEm: $criadoEm, ')
          ..write('atualizadoEm: $atualizadoEm')
          ..write(')'))
        .toString();
  }
}

class $VulnerabilidadeTable extends Vulnerabilidade
    with TableInfo<$VulnerabilidadeTable, VulnerabilidadeData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $VulnerabilidadeTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
    'id',
    aliasedName,
    false,
    hasAutoIncrement: true,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'PRIMARY KEY AUTOINCREMENT',
    ),
  );
  static const VerificationMeta _identificadorMeta = const VerificationMeta(
    'identificador',
  );
  @override
  late final GeneratedColumn<String> identificador = GeneratedColumn<String>(
    'identificador',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
    defaultConstraints: GeneratedColumn.constraintIsAlways('UNIQUE'),
  );
  static const VerificationMeta _secaoIdMeta = const VerificationMeta(
    'secaoId',
  );
  @override
  late final GeneratedColumn<int> secaoId = GeneratedColumn<int>(
    'secao_id',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'REFERENCES relatorios (id)',
    ),
  );
  static const VerificationMeta _tituloMeta = const VerificationMeta('titulo');
  @override
  late final GeneratedColumn<String> titulo = GeneratedColumn<String>(
    'titulo',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _descricaoMeta = const VerificationMeta(
    'descricao',
  );
  @override
  late final GeneratedColumn<String> descricao = GeneratedColumn<String>(
    'descricao',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _severidadeMeta = const VerificationMeta(
    'severidade',
  );
  @override
  late final GeneratedColumn<int> severidade = GeneratedColumn<int>(
    'severidade',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _pontuacaoCVSSMeta = const VerificationMeta(
    'pontuacaoCVSS',
  );
  @override
  late final GeneratedColumn<String> pontuacaoCVSS = GeneratedColumn<String>(
    'pontuacao_c_v_s_s',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _impactoMeta = const VerificationMeta(
    'impacto',
  );
  @override
  late final GeneratedColumn<String> impacto = GeneratedColumn<String>(
    'impacto',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _recomendacaoMeta = const VerificationMeta(
    'recomendacao',
  );
  @override
  late final GeneratedColumn<String> recomendacao = GeneratedColumn<String>(
    'recomendacao',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _referenciasMeta = const VerificationMeta(
    'referencias',
  );
  @override
  late final GeneratedColumn<String> referencias = GeneratedColumn<String>(
    'referencias',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _statusMeta = const VerificationMeta('status');
  @override
  late final GeneratedColumn<int> status = GeneratedColumn<int>(
    'status',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _criadoEmMeta = const VerificationMeta(
    'criadoEm',
  );
  @override
  late final GeneratedColumn<DateTime> criadoEm = GeneratedColumn<DateTime>(
    'criado_em',
    aliasedName,
    false,
    type: DriftSqlType.dateTime,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _atualizadoEmMeta = const VerificationMeta(
    'atualizadoEm',
  );
  @override
  late final GeneratedColumn<DateTime> atualizadoEm = GeneratedColumn<DateTime>(
    'atualizado_em',
    aliasedName,
    false,
    type: DriftSqlType.dateTime,
    requiredDuringInsert: true,
  );
  @override
  List<GeneratedColumn> get $columns => [
    id,
    identificador,
    secaoId,
    titulo,
    descricao,
    severidade,
    pontuacaoCVSS,
    impacto,
    recomendacao,
    referencias,
    status,
    criadoEm,
    atualizadoEm,
  ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'vulnerabilidade';
  @override
  VerificationContext validateIntegrity(
    Insertable<VulnerabilidadeData> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('identificador')) {
      context.handle(
        _identificadorMeta,
        identificador.isAcceptableOrUnknown(
          data['identificador']!,
          _identificadorMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_identificadorMeta);
    }
    if (data.containsKey('secao_id')) {
      context.handle(
        _secaoIdMeta,
        secaoId.isAcceptableOrUnknown(data['secao_id']!, _secaoIdMeta),
      );
    } else if (isInserting) {
      context.missing(_secaoIdMeta);
    }
    if (data.containsKey('titulo')) {
      context.handle(
        _tituloMeta,
        titulo.isAcceptableOrUnknown(data['titulo']!, _tituloMeta),
      );
    } else if (isInserting) {
      context.missing(_tituloMeta);
    }
    if (data.containsKey('descricao')) {
      context.handle(
        _descricaoMeta,
        descricao.isAcceptableOrUnknown(data['descricao']!, _descricaoMeta),
      );
    } else if (isInserting) {
      context.missing(_descricaoMeta);
    }
    if (data.containsKey('severidade')) {
      context.handle(
        _severidadeMeta,
        severidade.isAcceptableOrUnknown(data['severidade']!, _severidadeMeta),
      );
    } else if (isInserting) {
      context.missing(_severidadeMeta);
    }
    if (data.containsKey('pontuacao_c_v_s_s')) {
      context.handle(
        _pontuacaoCVSSMeta,
        pontuacaoCVSS.isAcceptableOrUnknown(
          data['pontuacao_c_v_s_s']!,
          _pontuacaoCVSSMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_pontuacaoCVSSMeta);
    }
    if (data.containsKey('impacto')) {
      context.handle(
        _impactoMeta,
        impacto.isAcceptableOrUnknown(data['impacto']!, _impactoMeta),
      );
    } else if (isInserting) {
      context.missing(_impactoMeta);
    }
    if (data.containsKey('recomendacao')) {
      context.handle(
        _recomendacaoMeta,
        recomendacao.isAcceptableOrUnknown(
          data['recomendacao']!,
          _recomendacaoMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_recomendacaoMeta);
    }
    if (data.containsKey('referencias')) {
      context.handle(
        _referenciasMeta,
        referencias.isAcceptableOrUnknown(
          data['referencias']!,
          _referenciasMeta,
        ),
      );
    }
    if (data.containsKey('status')) {
      context.handle(
        _statusMeta,
        status.isAcceptableOrUnknown(data['status']!, _statusMeta),
      );
    } else if (isInserting) {
      context.missing(_statusMeta);
    }
    if (data.containsKey('criado_em')) {
      context.handle(
        _criadoEmMeta,
        criadoEm.isAcceptableOrUnknown(data['criado_em']!, _criadoEmMeta),
      );
    } else if (isInserting) {
      context.missing(_criadoEmMeta);
    }
    if (data.containsKey('atualizado_em')) {
      context.handle(
        _atualizadoEmMeta,
        atualizadoEm.isAcceptableOrUnknown(
          data['atualizado_em']!,
          _atualizadoEmMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_atualizadoEmMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  VulnerabilidadeData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return VulnerabilidadeData(
      id: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}id'],
      )!,
      identificador: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}identificador'],
      )!,
      secaoId: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}secao_id'],
      )!,
      titulo: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}titulo'],
      )!,
      descricao: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}descricao'],
      )!,
      severidade: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}severidade'],
      )!,
      pontuacaoCVSS: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}pontuacao_c_v_s_s'],
      )!,
      impacto: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}impacto'],
      )!,
      recomendacao: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}recomendacao'],
      )!,
      referencias: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}referencias'],
      ),
      status: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}status'],
      )!,
      criadoEm: attachedDatabase.typeMapping.read(
        DriftSqlType.dateTime,
        data['${effectivePrefix}criado_em'],
      )!,
      atualizadoEm: attachedDatabase.typeMapping.read(
        DriftSqlType.dateTime,
        data['${effectivePrefix}atualizado_em'],
      )!,
    );
  }

  @override
  $VulnerabilidadeTable createAlias(String alias) {
    return $VulnerabilidadeTable(attachedDatabase, alias);
  }
}

class VulnerabilidadeData extends DataClass
    implements Insertable<VulnerabilidadeData> {
  final int id;
  final String identificador;
  final int secaoId;
  final String titulo;
  final String descricao;
  final int severidade;
  final String pontuacaoCVSS;
  final String impacto;
  final String recomendacao;
  final String? referencias;
  final int status;
  final DateTime criadoEm;
  final DateTime atualizadoEm;
  const VulnerabilidadeData({
    required this.id,
    required this.identificador,
    required this.secaoId,
    required this.titulo,
    required this.descricao,
    required this.severidade,
    required this.pontuacaoCVSS,
    required this.impacto,
    required this.recomendacao,
    this.referencias,
    required this.status,
    required this.criadoEm,
    required this.atualizadoEm,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['identificador'] = Variable<String>(identificador);
    map['secao_id'] = Variable<int>(secaoId);
    map['titulo'] = Variable<String>(titulo);
    map['descricao'] = Variable<String>(descricao);
    map['severidade'] = Variable<int>(severidade);
    map['pontuacao_c_v_s_s'] = Variable<String>(pontuacaoCVSS);
    map['impacto'] = Variable<String>(impacto);
    map['recomendacao'] = Variable<String>(recomendacao);
    if (!nullToAbsent || referencias != null) {
      map['referencias'] = Variable<String>(referencias);
    }
    map['status'] = Variable<int>(status);
    map['criado_em'] = Variable<DateTime>(criadoEm);
    map['atualizado_em'] = Variable<DateTime>(atualizadoEm);
    return map;
  }

  VulnerabilidadeCompanion toCompanion(bool nullToAbsent) {
    return VulnerabilidadeCompanion(
      id: Value(id),
      identificador: Value(identificador),
      secaoId: Value(secaoId),
      titulo: Value(titulo),
      descricao: Value(descricao),
      severidade: Value(severidade),
      pontuacaoCVSS: Value(pontuacaoCVSS),
      impacto: Value(impacto),
      recomendacao: Value(recomendacao),
      referencias: referencias == null && nullToAbsent
          ? const Value.absent()
          : Value(referencias),
      status: Value(status),
      criadoEm: Value(criadoEm),
      atualizadoEm: Value(atualizadoEm),
    );
  }

  factory VulnerabilidadeData.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return VulnerabilidadeData(
      id: serializer.fromJson<int>(json['id']),
      identificador: serializer.fromJson<String>(json['identificador']),
      secaoId: serializer.fromJson<int>(json['secaoId']),
      titulo: serializer.fromJson<String>(json['titulo']),
      descricao: serializer.fromJson<String>(json['descricao']),
      severidade: serializer.fromJson<int>(json['severidade']),
      pontuacaoCVSS: serializer.fromJson<String>(json['pontuacaoCVSS']),
      impacto: serializer.fromJson<String>(json['impacto']),
      recomendacao: serializer.fromJson<String>(json['recomendacao']),
      referencias: serializer.fromJson<String?>(json['referencias']),
      status: serializer.fromJson<int>(json['status']),
      criadoEm: serializer.fromJson<DateTime>(json['criadoEm']),
      atualizadoEm: serializer.fromJson<DateTime>(json['atualizadoEm']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'identificador': serializer.toJson<String>(identificador),
      'secaoId': serializer.toJson<int>(secaoId),
      'titulo': serializer.toJson<String>(titulo),
      'descricao': serializer.toJson<String>(descricao),
      'severidade': serializer.toJson<int>(severidade),
      'pontuacaoCVSS': serializer.toJson<String>(pontuacaoCVSS),
      'impacto': serializer.toJson<String>(impacto),
      'recomendacao': serializer.toJson<String>(recomendacao),
      'referencias': serializer.toJson<String?>(referencias),
      'status': serializer.toJson<int>(status),
      'criadoEm': serializer.toJson<DateTime>(criadoEm),
      'atualizadoEm': serializer.toJson<DateTime>(atualizadoEm),
    };
  }

  VulnerabilidadeData copyWith({
    int? id,
    String? identificador,
    int? secaoId,
    String? titulo,
    String? descricao,
    int? severidade,
    String? pontuacaoCVSS,
    String? impacto,
    String? recomendacao,
    Value<String?> referencias = const Value.absent(),
    int? status,
    DateTime? criadoEm,
    DateTime? atualizadoEm,
  }) => VulnerabilidadeData(
    id: id ?? this.id,
    identificador: identificador ?? this.identificador,
    secaoId: secaoId ?? this.secaoId,
    titulo: titulo ?? this.titulo,
    descricao: descricao ?? this.descricao,
    severidade: severidade ?? this.severidade,
    pontuacaoCVSS: pontuacaoCVSS ?? this.pontuacaoCVSS,
    impacto: impacto ?? this.impacto,
    recomendacao: recomendacao ?? this.recomendacao,
    referencias: referencias.present ? referencias.value : this.referencias,
    status: status ?? this.status,
    criadoEm: criadoEm ?? this.criadoEm,
    atualizadoEm: atualizadoEm ?? this.atualizadoEm,
  );
  VulnerabilidadeData copyWithCompanion(VulnerabilidadeCompanion data) {
    return VulnerabilidadeData(
      id: data.id.present ? data.id.value : this.id,
      identificador: data.identificador.present
          ? data.identificador.value
          : this.identificador,
      secaoId: data.secaoId.present ? data.secaoId.value : this.secaoId,
      titulo: data.titulo.present ? data.titulo.value : this.titulo,
      descricao: data.descricao.present ? data.descricao.value : this.descricao,
      severidade: data.severidade.present
          ? data.severidade.value
          : this.severidade,
      pontuacaoCVSS: data.pontuacaoCVSS.present
          ? data.pontuacaoCVSS.value
          : this.pontuacaoCVSS,
      impacto: data.impacto.present ? data.impacto.value : this.impacto,
      recomendacao: data.recomendacao.present
          ? data.recomendacao.value
          : this.recomendacao,
      referencias: data.referencias.present
          ? data.referencias.value
          : this.referencias,
      status: data.status.present ? data.status.value : this.status,
      criadoEm: data.criadoEm.present ? data.criadoEm.value : this.criadoEm,
      atualizadoEm: data.atualizadoEm.present
          ? data.atualizadoEm.value
          : this.atualizadoEm,
    );
  }

  @override
  String toString() {
    return (StringBuffer('VulnerabilidadeData(')
          ..write('id: $id, ')
          ..write('identificador: $identificador, ')
          ..write('secaoId: $secaoId, ')
          ..write('titulo: $titulo, ')
          ..write('descricao: $descricao, ')
          ..write('severidade: $severidade, ')
          ..write('pontuacaoCVSS: $pontuacaoCVSS, ')
          ..write('impacto: $impacto, ')
          ..write('recomendacao: $recomendacao, ')
          ..write('referencias: $referencias, ')
          ..write('status: $status, ')
          ..write('criadoEm: $criadoEm, ')
          ..write('atualizadoEm: $atualizadoEm')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
    id,
    identificador,
    secaoId,
    titulo,
    descricao,
    severidade,
    pontuacaoCVSS,
    impacto,
    recomendacao,
    referencias,
    status,
    criadoEm,
    atualizadoEm,
  );
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is VulnerabilidadeData &&
          other.id == this.id &&
          other.identificador == this.identificador &&
          other.secaoId == this.secaoId &&
          other.titulo == this.titulo &&
          other.descricao == this.descricao &&
          other.severidade == this.severidade &&
          other.pontuacaoCVSS == this.pontuacaoCVSS &&
          other.impacto == this.impacto &&
          other.recomendacao == this.recomendacao &&
          other.referencias == this.referencias &&
          other.status == this.status &&
          other.criadoEm == this.criadoEm &&
          other.atualizadoEm == this.atualizadoEm);
}

class VulnerabilidadeCompanion extends UpdateCompanion<VulnerabilidadeData> {
  final Value<int> id;
  final Value<String> identificador;
  final Value<int> secaoId;
  final Value<String> titulo;
  final Value<String> descricao;
  final Value<int> severidade;
  final Value<String> pontuacaoCVSS;
  final Value<String> impacto;
  final Value<String> recomendacao;
  final Value<String?> referencias;
  final Value<int> status;
  final Value<DateTime> criadoEm;
  final Value<DateTime> atualizadoEm;
  const VulnerabilidadeCompanion({
    this.id = const Value.absent(),
    this.identificador = const Value.absent(),
    this.secaoId = const Value.absent(),
    this.titulo = const Value.absent(),
    this.descricao = const Value.absent(),
    this.severidade = const Value.absent(),
    this.pontuacaoCVSS = const Value.absent(),
    this.impacto = const Value.absent(),
    this.recomendacao = const Value.absent(),
    this.referencias = const Value.absent(),
    this.status = const Value.absent(),
    this.criadoEm = const Value.absent(),
    this.atualizadoEm = const Value.absent(),
  });
  VulnerabilidadeCompanion.insert({
    this.id = const Value.absent(),
    required String identificador,
    required int secaoId,
    required String titulo,
    required String descricao,
    required int severidade,
    required String pontuacaoCVSS,
    required String impacto,
    required String recomendacao,
    this.referencias = const Value.absent(),
    required int status,
    required DateTime criadoEm,
    required DateTime atualizadoEm,
  }) : identificador = Value(identificador),
       secaoId = Value(secaoId),
       titulo = Value(titulo),
       descricao = Value(descricao),
       severidade = Value(severidade),
       pontuacaoCVSS = Value(pontuacaoCVSS),
       impacto = Value(impacto),
       recomendacao = Value(recomendacao),
       status = Value(status),
       criadoEm = Value(criadoEm),
       atualizadoEm = Value(atualizadoEm);
  static Insertable<VulnerabilidadeData> custom({
    Expression<int>? id,
    Expression<String>? identificador,
    Expression<int>? secaoId,
    Expression<String>? titulo,
    Expression<String>? descricao,
    Expression<int>? severidade,
    Expression<String>? pontuacaoCVSS,
    Expression<String>? impacto,
    Expression<String>? recomendacao,
    Expression<String>? referencias,
    Expression<int>? status,
    Expression<DateTime>? criadoEm,
    Expression<DateTime>? atualizadoEm,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (identificador != null) 'identificador': identificador,
      if (secaoId != null) 'secao_id': secaoId,
      if (titulo != null) 'titulo': titulo,
      if (descricao != null) 'descricao': descricao,
      if (severidade != null) 'severidade': severidade,
      if (pontuacaoCVSS != null) 'pontuacao_c_v_s_s': pontuacaoCVSS,
      if (impacto != null) 'impacto': impacto,
      if (recomendacao != null) 'recomendacao': recomendacao,
      if (referencias != null) 'referencias': referencias,
      if (status != null) 'status': status,
      if (criadoEm != null) 'criado_em': criadoEm,
      if (atualizadoEm != null) 'atualizado_em': atualizadoEm,
    });
  }

  VulnerabilidadeCompanion copyWith({
    Value<int>? id,
    Value<String>? identificador,
    Value<int>? secaoId,
    Value<String>? titulo,
    Value<String>? descricao,
    Value<int>? severidade,
    Value<String>? pontuacaoCVSS,
    Value<String>? impacto,
    Value<String>? recomendacao,
    Value<String?>? referencias,
    Value<int>? status,
    Value<DateTime>? criadoEm,
    Value<DateTime>? atualizadoEm,
  }) {
    return VulnerabilidadeCompanion(
      id: id ?? this.id,
      identificador: identificador ?? this.identificador,
      secaoId: secaoId ?? this.secaoId,
      titulo: titulo ?? this.titulo,
      descricao: descricao ?? this.descricao,
      severidade: severidade ?? this.severidade,
      pontuacaoCVSS: pontuacaoCVSS ?? this.pontuacaoCVSS,
      impacto: impacto ?? this.impacto,
      recomendacao: recomendacao ?? this.recomendacao,
      referencias: referencias ?? this.referencias,
      status: status ?? this.status,
      criadoEm: criadoEm ?? this.criadoEm,
      atualizadoEm: atualizadoEm ?? this.atualizadoEm,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (identificador.present) {
      map['identificador'] = Variable<String>(identificador.value);
    }
    if (secaoId.present) {
      map['secao_id'] = Variable<int>(secaoId.value);
    }
    if (titulo.present) {
      map['titulo'] = Variable<String>(titulo.value);
    }
    if (descricao.present) {
      map['descricao'] = Variable<String>(descricao.value);
    }
    if (severidade.present) {
      map['severidade'] = Variable<int>(severidade.value);
    }
    if (pontuacaoCVSS.present) {
      map['pontuacao_c_v_s_s'] = Variable<String>(pontuacaoCVSS.value);
    }
    if (impacto.present) {
      map['impacto'] = Variable<String>(impacto.value);
    }
    if (recomendacao.present) {
      map['recomendacao'] = Variable<String>(recomendacao.value);
    }
    if (referencias.present) {
      map['referencias'] = Variable<String>(referencias.value);
    }
    if (status.present) {
      map['status'] = Variable<int>(status.value);
    }
    if (criadoEm.present) {
      map['criado_em'] = Variable<DateTime>(criadoEm.value);
    }
    if (atualizadoEm.present) {
      map['atualizado_em'] = Variable<DateTime>(atualizadoEm.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('VulnerabilidadeCompanion(')
          ..write('id: $id, ')
          ..write('identificador: $identificador, ')
          ..write('secaoId: $secaoId, ')
          ..write('titulo: $titulo, ')
          ..write('descricao: $descricao, ')
          ..write('severidade: $severidade, ')
          ..write('pontuacaoCVSS: $pontuacaoCVSS, ')
          ..write('impacto: $impacto, ')
          ..write('recomendacao: $recomendacao, ')
          ..write('referencias: $referencias, ')
          ..write('status: $status, ')
          ..write('criadoEm: $criadoEm, ')
          ..write('atualizadoEm: $atualizadoEm')
          ..write(')'))
        .toString();
  }
}

class $EvidenciaTable extends Evidencia
    with TableInfo<$EvidenciaTable, EvidenciaData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $EvidenciaTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
    'id',
    aliasedName,
    false,
    hasAutoIncrement: true,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'PRIMARY KEY AUTOINCREMENT',
    ),
  );
  static const VerificationMeta _identificadorMeta = const VerificationMeta(
    'identificador',
  );
  @override
  late final GeneratedColumn<String> identificador = GeneratedColumn<String>(
    'identificador',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
    defaultConstraints: GeneratedColumn.constraintIsAlways('UNIQUE'),
  );
  static const VerificationMeta _vulnerabilidadeIdMeta = const VerificationMeta(
    'vulnerabilidadeId',
  );
  @override
  late final GeneratedColumn<int> vulnerabilidadeId = GeneratedColumn<int>(
    'vulnerabilidade_id',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'REFERENCES vulnerabilidade (id)',
    ),
  );
  static const VerificationMeta _caminhoMeta = const VerificationMeta(
    'caminho',
  );
  @override
  late final GeneratedColumn<String> caminho = GeneratedColumn<String>(
    'caminho',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _arquivoMeta = const VerificationMeta(
    'arquivo',
  );
  @override
  late final GeneratedColumn<String> arquivo = GeneratedColumn<String>(
    'arquivo',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _tipoMeta = const VerificationMeta('tipo');
  @override
  late final GeneratedColumn<String> tipo = GeneratedColumn<String>(
    'tipo',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _descricaoMeta = const VerificationMeta(
    'descricao',
  );
  @override
  late final GeneratedColumn<String> descricao = GeneratedColumn<String>(
    'descricao',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _ordemMeta = const VerificationMeta('ordem');
  @override
  late final GeneratedColumn<int> ordem = GeneratedColumn<int>(
    'ordem',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _criadoEmMeta = const VerificationMeta(
    'criadoEm',
  );
  @override
  late final GeneratedColumn<DateTime> criadoEm = GeneratedColumn<DateTime>(
    'criado_em',
    aliasedName,
    false,
    type: DriftSqlType.dateTime,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _atualizadoEmMeta = const VerificationMeta(
    'atualizadoEm',
  );
  @override
  late final GeneratedColumn<DateTime> atualizadoEm = GeneratedColumn<DateTime>(
    'atualizado_em',
    aliasedName,
    false,
    type: DriftSqlType.dateTime,
    requiredDuringInsert: true,
  );
  @override
  List<GeneratedColumn> get $columns => [
    id,
    identificador,
    vulnerabilidadeId,
    caminho,
    arquivo,
    tipo,
    descricao,
    ordem,
    criadoEm,
    atualizadoEm,
  ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'evidencia';
  @override
  VerificationContext validateIntegrity(
    Insertable<EvidenciaData> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('identificador')) {
      context.handle(
        _identificadorMeta,
        identificador.isAcceptableOrUnknown(
          data['identificador']!,
          _identificadorMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_identificadorMeta);
    }
    if (data.containsKey('vulnerabilidade_id')) {
      context.handle(
        _vulnerabilidadeIdMeta,
        vulnerabilidadeId.isAcceptableOrUnknown(
          data['vulnerabilidade_id']!,
          _vulnerabilidadeIdMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_vulnerabilidadeIdMeta);
    }
    if (data.containsKey('caminho')) {
      context.handle(
        _caminhoMeta,
        caminho.isAcceptableOrUnknown(data['caminho']!, _caminhoMeta),
      );
    } else if (isInserting) {
      context.missing(_caminhoMeta);
    }
    if (data.containsKey('arquivo')) {
      context.handle(
        _arquivoMeta,
        arquivo.isAcceptableOrUnknown(data['arquivo']!, _arquivoMeta),
      );
    } else if (isInserting) {
      context.missing(_arquivoMeta);
    }
    if (data.containsKey('tipo')) {
      context.handle(
        _tipoMeta,
        tipo.isAcceptableOrUnknown(data['tipo']!, _tipoMeta),
      );
    } else if (isInserting) {
      context.missing(_tipoMeta);
    }
    if (data.containsKey('descricao')) {
      context.handle(
        _descricaoMeta,
        descricao.isAcceptableOrUnknown(data['descricao']!, _descricaoMeta),
      );
    }
    if (data.containsKey('ordem')) {
      context.handle(
        _ordemMeta,
        ordem.isAcceptableOrUnknown(data['ordem']!, _ordemMeta),
      );
    } else if (isInserting) {
      context.missing(_ordemMeta);
    }
    if (data.containsKey('criado_em')) {
      context.handle(
        _criadoEmMeta,
        criadoEm.isAcceptableOrUnknown(data['criado_em']!, _criadoEmMeta),
      );
    } else if (isInserting) {
      context.missing(_criadoEmMeta);
    }
    if (data.containsKey('atualizado_em')) {
      context.handle(
        _atualizadoEmMeta,
        atualizadoEm.isAcceptableOrUnknown(
          data['atualizado_em']!,
          _atualizadoEmMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_atualizadoEmMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  EvidenciaData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return EvidenciaData(
      id: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}id'],
      )!,
      identificador: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}identificador'],
      )!,
      vulnerabilidadeId: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}vulnerabilidade_id'],
      )!,
      caminho: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}caminho'],
      )!,
      arquivo: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}arquivo'],
      )!,
      tipo: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}tipo'],
      )!,
      descricao: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}descricao'],
      ),
      ordem: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}ordem'],
      )!,
      criadoEm: attachedDatabase.typeMapping.read(
        DriftSqlType.dateTime,
        data['${effectivePrefix}criado_em'],
      )!,
      atualizadoEm: attachedDatabase.typeMapping.read(
        DriftSqlType.dateTime,
        data['${effectivePrefix}atualizado_em'],
      )!,
    );
  }

  @override
  $EvidenciaTable createAlias(String alias) {
    return $EvidenciaTable(attachedDatabase, alias);
  }
}

class EvidenciaData extends DataClass implements Insertable<EvidenciaData> {
  final int id;
  final String identificador;
  final int vulnerabilidadeId;
  final String caminho;
  final String arquivo;
  final String tipo;
  final String? descricao;
  final int ordem;
  final DateTime criadoEm;
  final DateTime atualizadoEm;
  const EvidenciaData({
    required this.id,
    required this.identificador,
    required this.vulnerabilidadeId,
    required this.caminho,
    required this.arquivo,
    required this.tipo,
    this.descricao,
    required this.ordem,
    required this.criadoEm,
    required this.atualizadoEm,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['identificador'] = Variable<String>(identificador);
    map['vulnerabilidade_id'] = Variable<int>(vulnerabilidadeId);
    map['caminho'] = Variable<String>(caminho);
    map['arquivo'] = Variable<String>(arquivo);
    map['tipo'] = Variable<String>(tipo);
    if (!nullToAbsent || descricao != null) {
      map['descricao'] = Variable<String>(descricao);
    }
    map['ordem'] = Variable<int>(ordem);
    map['criado_em'] = Variable<DateTime>(criadoEm);
    map['atualizado_em'] = Variable<DateTime>(atualizadoEm);
    return map;
  }

  EvidenciaCompanion toCompanion(bool nullToAbsent) {
    return EvidenciaCompanion(
      id: Value(id),
      identificador: Value(identificador),
      vulnerabilidadeId: Value(vulnerabilidadeId),
      caminho: Value(caminho),
      arquivo: Value(arquivo),
      tipo: Value(tipo),
      descricao: descricao == null && nullToAbsent
          ? const Value.absent()
          : Value(descricao),
      ordem: Value(ordem),
      criadoEm: Value(criadoEm),
      atualizadoEm: Value(atualizadoEm),
    );
  }

  factory EvidenciaData.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return EvidenciaData(
      id: serializer.fromJson<int>(json['id']),
      identificador: serializer.fromJson<String>(json['identificador']),
      vulnerabilidadeId: serializer.fromJson<int>(json['vulnerabilidadeId']),
      caminho: serializer.fromJson<String>(json['caminho']),
      arquivo: serializer.fromJson<String>(json['arquivo']),
      tipo: serializer.fromJson<String>(json['tipo']),
      descricao: serializer.fromJson<String?>(json['descricao']),
      ordem: serializer.fromJson<int>(json['ordem']),
      criadoEm: serializer.fromJson<DateTime>(json['criadoEm']),
      atualizadoEm: serializer.fromJson<DateTime>(json['atualizadoEm']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'identificador': serializer.toJson<String>(identificador),
      'vulnerabilidadeId': serializer.toJson<int>(vulnerabilidadeId),
      'caminho': serializer.toJson<String>(caminho),
      'arquivo': serializer.toJson<String>(arquivo),
      'tipo': serializer.toJson<String>(tipo),
      'descricao': serializer.toJson<String?>(descricao),
      'ordem': serializer.toJson<int>(ordem),
      'criadoEm': serializer.toJson<DateTime>(criadoEm),
      'atualizadoEm': serializer.toJson<DateTime>(atualizadoEm),
    };
  }

  EvidenciaData copyWith({
    int? id,
    String? identificador,
    int? vulnerabilidadeId,
    String? caminho,
    String? arquivo,
    String? tipo,
    Value<String?> descricao = const Value.absent(),
    int? ordem,
    DateTime? criadoEm,
    DateTime? atualizadoEm,
  }) => EvidenciaData(
    id: id ?? this.id,
    identificador: identificador ?? this.identificador,
    vulnerabilidadeId: vulnerabilidadeId ?? this.vulnerabilidadeId,
    caminho: caminho ?? this.caminho,
    arquivo: arquivo ?? this.arquivo,
    tipo: tipo ?? this.tipo,
    descricao: descricao.present ? descricao.value : this.descricao,
    ordem: ordem ?? this.ordem,
    criadoEm: criadoEm ?? this.criadoEm,
    atualizadoEm: atualizadoEm ?? this.atualizadoEm,
  );
  EvidenciaData copyWithCompanion(EvidenciaCompanion data) {
    return EvidenciaData(
      id: data.id.present ? data.id.value : this.id,
      identificador: data.identificador.present
          ? data.identificador.value
          : this.identificador,
      vulnerabilidadeId: data.vulnerabilidadeId.present
          ? data.vulnerabilidadeId.value
          : this.vulnerabilidadeId,
      caminho: data.caminho.present ? data.caminho.value : this.caminho,
      arquivo: data.arquivo.present ? data.arquivo.value : this.arquivo,
      tipo: data.tipo.present ? data.tipo.value : this.tipo,
      descricao: data.descricao.present ? data.descricao.value : this.descricao,
      ordem: data.ordem.present ? data.ordem.value : this.ordem,
      criadoEm: data.criadoEm.present ? data.criadoEm.value : this.criadoEm,
      atualizadoEm: data.atualizadoEm.present
          ? data.atualizadoEm.value
          : this.atualizadoEm,
    );
  }

  @override
  String toString() {
    return (StringBuffer('EvidenciaData(')
          ..write('id: $id, ')
          ..write('identificador: $identificador, ')
          ..write('vulnerabilidadeId: $vulnerabilidadeId, ')
          ..write('caminho: $caminho, ')
          ..write('arquivo: $arquivo, ')
          ..write('tipo: $tipo, ')
          ..write('descricao: $descricao, ')
          ..write('ordem: $ordem, ')
          ..write('criadoEm: $criadoEm, ')
          ..write('atualizadoEm: $atualizadoEm')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
    id,
    identificador,
    vulnerabilidadeId,
    caminho,
    arquivo,
    tipo,
    descricao,
    ordem,
    criadoEm,
    atualizadoEm,
  );
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is EvidenciaData &&
          other.id == this.id &&
          other.identificador == this.identificador &&
          other.vulnerabilidadeId == this.vulnerabilidadeId &&
          other.caminho == this.caminho &&
          other.arquivo == this.arquivo &&
          other.tipo == this.tipo &&
          other.descricao == this.descricao &&
          other.ordem == this.ordem &&
          other.criadoEm == this.criadoEm &&
          other.atualizadoEm == this.atualizadoEm);
}

class EvidenciaCompanion extends UpdateCompanion<EvidenciaData> {
  final Value<int> id;
  final Value<String> identificador;
  final Value<int> vulnerabilidadeId;
  final Value<String> caminho;
  final Value<String> arquivo;
  final Value<String> tipo;
  final Value<String?> descricao;
  final Value<int> ordem;
  final Value<DateTime> criadoEm;
  final Value<DateTime> atualizadoEm;
  const EvidenciaCompanion({
    this.id = const Value.absent(),
    this.identificador = const Value.absent(),
    this.vulnerabilidadeId = const Value.absent(),
    this.caminho = const Value.absent(),
    this.arquivo = const Value.absent(),
    this.tipo = const Value.absent(),
    this.descricao = const Value.absent(),
    this.ordem = const Value.absent(),
    this.criadoEm = const Value.absent(),
    this.atualizadoEm = const Value.absent(),
  });
  EvidenciaCompanion.insert({
    this.id = const Value.absent(),
    required String identificador,
    required int vulnerabilidadeId,
    required String caminho,
    required String arquivo,
    required String tipo,
    this.descricao = const Value.absent(),
    required int ordem,
    required DateTime criadoEm,
    required DateTime atualizadoEm,
  }) : identificador = Value(identificador),
       vulnerabilidadeId = Value(vulnerabilidadeId),
       caminho = Value(caminho),
       arquivo = Value(arquivo),
       tipo = Value(tipo),
       ordem = Value(ordem),
       criadoEm = Value(criadoEm),
       atualizadoEm = Value(atualizadoEm);
  static Insertable<EvidenciaData> custom({
    Expression<int>? id,
    Expression<String>? identificador,
    Expression<int>? vulnerabilidadeId,
    Expression<String>? caminho,
    Expression<String>? arquivo,
    Expression<String>? tipo,
    Expression<String>? descricao,
    Expression<int>? ordem,
    Expression<DateTime>? criadoEm,
    Expression<DateTime>? atualizadoEm,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (identificador != null) 'identificador': identificador,
      if (vulnerabilidadeId != null) 'vulnerabilidade_id': vulnerabilidadeId,
      if (caminho != null) 'caminho': caminho,
      if (arquivo != null) 'arquivo': arquivo,
      if (tipo != null) 'tipo': tipo,
      if (descricao != null) 'descricao': descricao,
      if (ordem != null) 'ordem': ordem,
      if (criadoEm != null) 'criado_em': criadoEm,
      if (atualizadoEm != null) 'atualizado_em': atualizadoEm,
    });
  }

  EvidenciaCompanion copyWith({
    Value<int>? id,
    Value<String>? identificador,
    Value<int>? vulnerabilidadeId,
    Value<String>? caminho,
    Value<String>? arquivo,
    Value<String>? tipo,
    Value<String?>? descricao,
    Value<int>? ordem,
    Value<DateTime>? criadoEm,
    Value<DateTime>? atualizadoEm,
  }) {
    return EvidenciaCompanion(
      id: id ?? this.id,
      identificador: identificador ?? this.identificador,
      vulnerabilidadeId: vulnerabilidadeId ?? this.vulnerabilidadeId,
      caminho: caminho ?? this.caminho,
      arquivo: arquivo ?? this.arquivo,
      tipo: tipo ?? this.tipo,
      descricao: descricao ?? this.descricao,
      ordem: ordem ?? this.ordem,
      criadoEm: criadoEm ?? this.criadoEm,
      atualizadoEm: atualizadoEm ?? this.atualizadoEm,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (identificador.present) {
      map['identificador'] = Variable<String>(identificador.value);
    }
    if (vulnerabilidadeId.present) {
      map['vulnerabilidade_id'] = Variable<int>(vulnerabilidadeId.value);
    }
    if (caminho.present) {
      map['caminho'] = Variable<String>(caminho.value);
    }
    if (arquivo.present) {
      map['arquivo'] = Variable<String>(arquivo.value);
    }
    if (tipo.present) {
      map['tipo'] = Variable<String>(tipo.value);
    }
    if (descricao.present) {
      map['descricao'] = Variable<String>(descricao.value);
    }
    if (ordem.present) {
      map['ordem'] = Variable<int>(ordem.value);
    }
    if (criadoEm.present) {
      map['criado_em'] = Variable<DateTime>(criadoEm.value);
    }
    if (atualizadoEm.present) {
      map['atualizado_em'] = Variable<DateTime>(atualizadoEm.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('EvidenciaCompanion(')
          ..write('id: $id, ')
          ..write('identificador: $identificador, ')
          ..write('vulnerabilidadeId: $vulnerabilidadeId, ')
          ..write('caminho: $caminho, ')
          ..write('arquivo: $arquivo, ')
          ..write('tipo: $tipo, ')
          ..write('descricao: $descricao, ')
          ..write('ordem: $ordem, ')
          ..write('criadoEm: $criadoEm, ')
          ..write('atualizadoEm: $atualizadoEm')
          ..write(')'))
        .toString();
  }
}

class $EscopoTable extends Escopo with TableInfo<$EscopoTable, EscopoData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $EscopoTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
    'id',
    aliasedName,
    false,
    hasAutoIncrement: true,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'PRIMARY KEY AUTOINCREMENT',
    ),
  );
  static const VerificationMeta _identificadorMeta = const VerificationMeta(
    'identificador',
  );
  @override
  late final GeneratedColumn<String> identificador = GeneratedColumn<String>(
    'identificador',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
    defaultConstraints: GeneratedColumn.constraintIsAlways('UNIQUE'),
  );
  static const VerificationMeta _relatorioIdMeta = const VerificationMeta(
    'relatorioId',
  );
  @override
  late final GeneratedColumn<int> relatorioId = GeneratedColumn<int>(
    'relatorio_id',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'REFERENCES relatorios (id)',
    ),
  );
  static const VerificationMeta _tipoEscopoMeta = const VerificationMeta(
    'tipoEscopo',
  );
  @override
  late final GeneratedColumn<int> tipoEscopo = GeneratedColumn<int>(
    'tipo_escopo',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _valorMeta = const VerificationMeta('valor');
  @override
  late final GeneratedColumn<String> valor = GeneratedColumn<String>(
    'valor',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _criadoEmMeta = const VerificationMeta(
    'criadoEm',
  );
  @override
  late final GeneratedColumn<DateTime> criadoEm = GeneratedColumn<DateTime>(
    'criado_em',
    aliasedName,
    false,
    type: DriftSqlType.dateTime,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _atualizadoEmMeta = const VerificationMeta(
    'atualizadoEm',
  );
  @override
  late final GeneratedColumn<DateTime> atualizadoEm = GeneratedColumn<DateTime>(
    'atualizado_em',
    aliasedName,
    false,
    type: DriftSqlType.dateTime,
    requiredDuringInsert: true,
  );
  @override
  List<GeneratedColumn> get $columns => [
    id,
    identificador,
    relatorioId,
    tipoEscopo,
    valor,
    criadoEm,
    atualizadoEm,
  ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'escopo';
  @override
  VerificationContext validateIntegrity(
    Insertable<EscopoData> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('identificador')) {
      context.handle(
        _identificadorMeta,
        identificador.isAcceptableOrUnknown(
          data['identificador']!,
          _identificadorMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_identificadorMeta);
    }
    if (data.containsKey('relatorio_id')) {
      context.handle(
        _relatorioIdMeta,
        relatorioId.isAcceptableOrUnknown(
          data['relatorio_id']!,
          _relatorioIdMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_relatorioIdMeta);
    }
    if (data.containsKey('tipo_escopo')) {
      context.handle(
        _tipoEscopoMeta,
        tipoEscopo.isAcceptableOrUnknown(data['tipo_escopo']!, _tipoEscopoMeta),
      );
    } else if (isInserting) {
      context.missing(_tipoEscopoMeta);
    }
    if (data.containsKey('valor')) {
      context.handle(
        _valorMeta,
        valor.isAcceptableOrUnknown(data['valor']!, _valorMeta),
      );
    } else if (isInserting) {
      context.missing(_valorMeta);
    }
    if (data.containsKey('criado_em')) {
      context.handle(
        _criadoEmMeta,
        criadoEm.isAcceptableOrUnknown(data['criado_em']!, _criadoEmMeta),
      );
    } else if (isInserting) {
      context.missing(_criadoEmMeta);
    }
    if (data.containsKey('atualizado_em')) {
      context.handle(
        _atualizadoEmMeta,
        atualizadoEm.isAcceptableOrUnknown(
          data['atualizado_em']!,
          _atualizadoEmMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_atualizadoEmMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  EscopoData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return EscopoData(
      id: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}id'],
      )!,
      identificador: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}identificador'],
      )!,
      relatorioId: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}relatorio_id'],
      )!,
      tipoEscopo: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}tipo_escopo'],
      )!,
      valor: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}valor'],
      )!,
      criadoEm: attachedDatabase.typeMapping.read(
        DriftSqlType.dateTime,
        data['${effectivePrefix}criado_em'],
      )!,
      atualizadoEm: attachedDatabase.typeMapping.read(
        DriftSqlType.dateTime,
        data['${effectivePrefix}atualizado_em'],
      )!,
    );
  }

  @override
  $EscopoTable createAlias(String alias) {
    return $EscopoTable(attachedDatabase, alias);
  }
}

class EscopoData extends DataClass implements Insertable<EscopoData> {
  final int id;
  final String identificador;
  final int relatorioId;
  final int tipoEscopo;
  final String valor;
  final DateTime criadoEm;
  final DateTime atualizadoEm;
  const EscopoData({
    required this.id,
    required this.identificador,
    required this.relatorioId,
    required this.tipoEscopo,
    required this.valor,
    required this.criadoEm,
    required this.atualizadoEm,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['identificador'] = Variable<String>(identificador);
    map['relatorio_id'] = Variable<int>(relatorioId);
    map['tipo_escopo'] = Variable<int>(tipoEscopo);
    map['valor'] = Variable<String>(valor);
    map['criado_em'] = Variable<DateTime>(criadoEm);
    map['atualizado_em'] = Variable<DateTime>(atualizadoEm);
    return map;
  }

  EscopoCompanion toCompanion(bool nullToAbsent) {
    return EscopoCompanion(
      id: Value(id),
      identificador: Value(identificador),
      relatorioId: Value(relatorioId),
      tipoEscopo: Value(tipoEscopo),
      valor: Value(valor),
      criadoEm: Value(criadoEm),
      atualizadoEm: Value(atualizadoEm),
    );
  }

  factory EscopoData.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return EscopoData(
      id: serializer.fromJson<int>(json['id']),
      identificador: serializer.fromJson<String>(json['identificador']),
      relatorioId: serializer.fromJson<int>(json['relatorioId']),
      tipoEscopo: serializer.fromJson<int>(json['tipoEscopo']),
      valor: serializer.fromJson<String>(json['valor']),
      criadoEm: serializer.fromJson<DateTime>(json['criadoEm']),
      atualizadoEm: serializer.fromJson<DateTime>(json['atualizadoEm']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'identificador': serializer.toJson<String>(identificador),
      'relatorioId': serializer.toJson<int>(relatorioId),
      'tipoEscopo': serializer.toJson<int>(tipoEscopo),
      'valor': serializer.toJson<String>(valor),
      'criadoEm': serializer.toJson<DateTime>(criadoEm),
      'atualizadoEm': serializer.toJson<DateTime>(atualizadoEm),
    };
  }

  EscopoData copyWith({
    int? id,
    String? identificador,
    int? relatorioId,
    int? tipoEscopo,
    String? valor,
    DateTime? criadoEm,
    DateTime? atualizadoEm,
  }) => EscopoData(
    id: id ?? this.id,
    identificador: identificador ?? this.identificador,
    relatorioId: relatorioId ?? this.relatorioId,
    tipoEscopo: tipoEscopo ?? this.tipoEscopo,
    valor: valor ?? this.valor,
    criadoEm: criadoEm ?? this.criadoEm,
    atualizadoEm: atualizadoEm ?? this.atualizadoEm,
  );
  EscopoData copyWithCompanion(EscopoCompanion data) {
    return EscopoData(
      id: data.id.present ? data.id.value : this.id,
      identificador: data.identificador.present
          ? data.identificador.value
          : this.identificador,
      relatorioId: data.relatorioId.present
          ? data.relatorioId.value
          : this.relatorioId,
      tipoEscopo: data.tipoEscopo.present
          ? data.tipoEscopo.value
          : this.tipoEscopo,
      valor: data.valor.present ? data.valor.value : this.valor,
      criadoEm: data.criadoEm.present ? data.criadoEm.value : this.criadoEm,
      atualizadoEm: data.atualizadoEm.present
          ? data.atualizadoEm.value
          : this.atualizadoEm,
    );
  }

  @override
  String toString() {
    return (StringBuffer('EscopoData(')
          ..write('id: $id, ')
          ..write('identificador: $identificador, ')
          ..write('relatorioId: $relatorioId, ')
          ..write('tipoEscopo: $tipoEscopo, ')
          ..write('valor: $valor, ')
          ..write('criadoEm: $criadoEm, ')
          ..write('atualizadoEm: $atualizadoEm')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
    id,
    identificador,
    relatorioId,
    tipoEscopo,
    valor,
    criadoEm,
    atualizadoEm,
  );
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is EscopoData &&
          other.id == this.id &&
          other.identificador == this.identificador &&
          other.relatorioId == this.relatorioId &&
          other.tipoEscopo == this.tipoEscopo &&
          other.valor == this.valor &&
          other.criadoEm == this.criadoEm &&
          other.atualizadoEm == this.atualizadoEm);
}

class EscopoCompanion extends UpdateCompanion<EscopoData> {
  final Value<int> id;
  final Value<String> identificador;
  final Value<int> relatorioId;
  final Value<int> tipoEscopo;
  final Value<String> valor;
  final Value<DateTime> criadoEm;
  final Value<DateTime> atualizadoEm;
  const EscopoCompanion({
    this.id = const Value.absent(),
    this.identificador = const Value.absent(),
    this.relatorioId = const Value.absent(),
    this.tipoEscopo = const Value.absent(),
    this.valor = const Value.absent(),
    this.criadoEm = const Value.absent(),
    this.atualizadoEm = const Value.absent(),
  });
  EscopoCompanion.insert({
    this.id = const Value.absent(),
    required String identificador,
    required int relatorioId,
    required int tipoEscopo,
    required String valor,
    required DateTime criadoEm,
    required DateTime atualizadoEm,
  }) : identificador = Value(identificador),
       relatorioId = Value(relatorioId),
       tipoEscopo = Value(tipoEscopo),
       valor = Value(valor),
       criadoEm = Value(criadoEm),
       atualizadoEm = Value(atualizadoEm);
  static Insertable<EscopoData> custom({
    Expression<int>? id,
    Expression<String>? identificador,
    Expression<int>? relatorioId,
    Expression<int>? tipoEscopo,
    Expression<String>? valor,
    Expression<DateTime>? criadoEm,
    Expression<DateTime>? atualizadoEm,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (identificador != null) 'identificador': identificador,
      if (relatorioId != null) 'relatorio_id': relatorioId,
      if (tipoEscopo != null) 'tipo_escopo': tipoEscopo,
      if (valor != null) 'valor': valor,
      if (criadoEm != null) 'criado_em': criadoEm,
      if (atualizadoEm != null) 'atualizado_em': atualizadoEm,
    });
  }

  EscopoCompanion copyWith({
    Value<int>? id,
    Value<String>? identificador,
    Value<int>? relatorioId,
    Value<int>? tipoEscopo,
    Value<String>? valor,
    Value<DateTime>? criadoEm,
    Value<DateTime>? atualizadoEm,
  }) {
    return EscopoCompanion(
      id: id ?? this.id,
      identificador: identificador ?? this.identificador,
      relatorioId: relatorioId ?? this.relatorioId,
      tipoEscopo: tipoEscopo ?? this.tipoEscopo,
      valor: valor ?? this.valor,
      criadoEm: criadoEm ?? this.criadoEm,
      atualizadoEm: atualizadoEm ?? this.atualizadoEm,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (identificador.present) {
      map['identificador'] = Variable<String>(identificador.value);
    }
    if (relatorioId.present) {
      map['relatorio_id'] = Variable<int>(relatorioId.value);
    }
    if (tipoEscopo.present) {
      map['tipo_escopo'] = Variable<int>(tipoEscopo.value);
    }
    if (valor.present) {
      map['valor'] = Variable<String>(valor.value);
    }
    if (criadoEm.present) {
      map['criado_em'] = Variable<DateTime>(criadoEm.value);
    }
    if (atualizadoEm.present) {
      map['atualizado_em'] = Variable<DateTime>(atualizadoEm.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('EscopoCompanion(')
          ..write('id: $id, ')
          ..write('identificador: $identificador, ')
          ..write('relatorioId: $relatorioId, ')
          ..write('tipoEscopo: $tipoEscopo, ')
          ..write('valor: $valor, ')
          ..write('criadoEm: $criadoEm, ')
          ..write('atualizadoEm: $atualizadoEm')
          ..write(')'))
        .toString();
  }
}

abstract class _$AppDatabase extends GeneratedDatabase {
  _$AppDatabase(QueryExecutor e) : super(e);
  $AppDatabaseManager get managers => $AppDatabaseManager(this);
  late final $ClienteTable cliente = $ClienteTable(this);
  late final $RelatorioTable relatorio = $RelatorioTable(this);
  late final $SecaoTable secao = $SecaoTable(this);
  late final $VulnerabilidadeTable vulnerabilidade = $VulnerabilidadeTable(
    this,
  );
  late final $EvidenciaTable evidencia = $EvidenciaTable(this);
  late final $EscopoTable escopo = $EscopoTable(this);
  @override
  Iterable<TableInfo<Table, Object?>> get allTables =>
      allSchemaEntities.whereType<TableInfo<Table, Object?>>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities => [
    cliente,
    relatorio,
    secao,
    vulnerabilidade,
    evidencia,
    escopo,
  ];
}

typedef $$ClienteTableCreateCompanionBuilder =
    ClienteCompanion Function({
      Value<int> id,
      required String identificador,
      required String nome,
      Value<String?> empresa,
      Value<String?> telefone,
      Value<String?> email,
      Value<String?> anotacoes,
      required DateTime criadoEm,
      required DateTime atualizadoEm,
    });
typedef $$ClienteTableUpdateCompanionBuilder =
    ClienteCompanion Function({
      Value<int> id,
      Value<String> identificador,
      Value<String> nome,
      Value<String?> empresa,
      Value<String?> telefone,
      Value<String?> email,
      Value<String?> anotacoes,
      Value<DateTime> criadoEm,
      Value<DateTime> atualizadoEm,
    });

final class $$ClienteTableReferences
    extends BaseReferences<_$AppDatabase, $ClienteTable, ClienteData> {
  $$ClienteTableReferences(super.$_db, super.$_table, super.$_typedResult);

  static MultiTypedResultKey<$RelatorioTable, List<RelatorioData>>
  _relatorioRefsTable(_$AppDatabase db) => MultiTypedResultKey.fromTable(
    db.relatorio,
    aliasName: 'clientes__id__relatorios__cliente_id',
  );

  $$RelatorioTableProcessedTableManager get relatorioRefs {
    final manager = $$RelatorioTableTableManager(
      $_db,
      $_db.relatorio,
    ).filter((f) => f.clienteId.id.sqlEquals($_itemColumn<int>('id')!));

    final cache = $_typedResult.readTableOrNull(_relatorioRefsTable($_db));
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: cache),
    );
  }
}

class $$ClienteTableFilterComposer
    extends Composer<_$AppDatabase, $ClienteTable> {
  $$ClienteTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<int> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get identificador => $composableBuilder(
    column: $table.identificador,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get nome => $composableBuilder(
    column: $table.nome,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get empresa => $composableBuilder(
    column: $table.empresa,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get telefone => $composableBuilder(
    column: $table.telefone,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get email => $composableBuilder(
    column: $table.email,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get anotacoes => $composableBuilder(
    column: $table.anotacoes,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<DateTime> get criadoEm => $composableBuilder(
    column: $table.criadoEm,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<DateTime> get atualizadoEm => $composableBuilder(
    column: $table.atualizadoEm,
    builder: (column) => ColumnFilters(column),
  );

  Expression<bool> relatorioRefs(
    Expression<bool> Function($$RelatorioTableFilterComposer f) f,
  ) {
    final $$RelatorioTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.id,
      referencedTable: $db.relatorio,
      getReferencedColumn: (t) => t.clienteId,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$RelatorioTableFilterComposer(
            $db: $db,
            $table: $db.relatorio,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return f(composer);
  }
}

class $$ClienteTableOrderingComposer
    extends Composer<_$AppDatabase, $ClienteTable> {
  $$ClienteTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<int> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get identificador => $composableBuilder(
    column: $table.identificador,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get nome => $composableBuilder(
    column: $table.nome,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get empresa => $composableBuilder(
    column: $table.empresa,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get telefone => $composableBuilder(
    column: $table.telefone,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get email => $composableBuilder(
    column: $table.email,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get anotacoes => $composableBuilder(
    column: $table.anotacoes,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get criadoEm => $composableBuilder(
    column: $table.criadoEm,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get atualizadoEm => $composableBuilder(
    column: $table.atualizadoEm,
    builder: (column) => ColumnOrderings(column),
  );
}

class $$ClienteTableAnnotationComposer
    extends Composer<_$AppDatabase, $ClienteTable> {
  $$ClienteTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get identificador => $composableBuilder(
    column: $table.identificador,
    builder: (column) => column,
  );

  GeneratedColumn<String> get nome =>
      $composableBuilder(column: $table.nome, builder: (column) => column);

  GeneratedColumn<String> get empresa =>
      $composableBuilder(column: $table.empresa, builder: (column) => column);

  GeneratedColumn<String> get telefone =>
      $composableBuilder(column: $table.telefone, builder: (column) => column);

  GeneratedColumn<String> get email =>
      $composableBuilder(column: $table.email, builder: (column) => column);

  GeneratedColumn<String> get anotacoes =>
      $composableBuilder(column: $table.anotacoes, builder: (column) => column);

  GeneratedColumn<DateTime> get criadoEm =>
      $composableBuilder(column: $table.criadoEm, builder: (column) => column);

  GeneratedColumn<DateTime> get atualizadoEm => $composableBuilder(
    column: $table.atualizadoEm,
    builder: (column) => column,
  );

  Expression<T> relatorioRefs<T extends Object>(
    Expression<T> Function($$RelatorioTableAnnotationComposer a) f,
  ) {
    final $$RelatorioTableAnnotationComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.id,
      referencedTable: $db.relatorio,
      getReferencedColumn: (t) => t.clienteId,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$RelatorioTableAnnotationComposer(
            $db: $db,
            $table: $db.relatorio,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return f(composer);
  }
}

class $$ClienteTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $ClienteTable,
          ClienteData,
          $$ClienteTableFilterComposer,
          $$ClienteTableOrderingComposer,
          $$ClienteTableAnnotationComposer,
          $$ClienteTableCreateCompanionBuilder,
          $$ClienteTableUpdateCompanionBuilder,
          (ClienteData, $$ClienteTableReferences),
          ClienteData,
          PrefetchHooks Function({bool relatorioRefs})
        > {
  $$ClienteTableTableManager(_$AppDatabase db, $ClienteTable table)
    : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$ClienteTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$ClienteTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$ClienteTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback:
              ({
                Value<int> id = const Value.absent(),
                Value<String> identificador = const Value.absent(),
                Value<String> nome = const Value.absent(),
                Value<String?> empresa = const Value.absent(),
                Value<String?> telefone = const Value.absent(),
                Value<String?> email = const Value.absent(),
                Value<String?> anotacoes = const Value.absent(),
                Value<DateTime> criadoEm = const Value.absent(),
                Value<DateTime> atualizadoEm = const Value.absent(),
              }) => ClienteCompanion(
                id: id,
                identificador: identificador,
                nome: nome,
                empresa: empresa,
                telefone: telefone,
                email: email,
                anotacoes: anotacoes,
                criadoEm: criadoEm,
                atualizadoEm: atualizadoEm,
              ),
          createCompanionCallback:
              ({
                Value<int> id = const Value.absent(),
                required String identificador,
                required String nome,
                Value<String?> empresa = const Value.absent(),
                Value<String?> telefone = const Value.absent(),
                Value<String?> email = const Value.absent(),
                Value<String?> anotacoes = const Value.absent(),
                required DateTime criadoEm,
                required DateTime atualizadoEm,
              }) => ClienteCompanion.insert(
                id: id,
                identificador: identificador,
                nome: nome,
                empresa: empresa,
                telefone: telefone,
                email: email,
                anotacoes: anotacoes,
                criadoEm: criadoEm,
                atualizadoEm: atualizadoEm,
              ),
          withReferenceMapper: (p0) => p0
              .map(
                (e) => (
                  e.readTable(table),
                  $$ClienteTableReferences(db, table, e),
                ),
              )
              .toList(),
          prefetchHooksCallback: ({relatorioRefs = false}) {
            return PrefetchHooks(
              db: db,
              explicitlyWatchedTables: [if (relatorioRefs) db.relatorio],
              addJoins: null,
              getPrefetchedDataCallback: (items) async {
                return [
                  if (relatorioRefs)
                    await $_getPrefetchedData<
                      ClienteData,
                      $ClienteTable,
                      RelatorioData
                    >(
                      currentTable: table,
                      referencedTable: $$ClienteTableReferences
                          ._relatorioRefsTable(db),
                      managerFromTypedResult: (p0) =>
                          $$ClienteTableReferences(db, table, p0).relatorioRefs,
                      referencedItemsForCurrentItem: (item, referencedItems) =>
                          referencedItems.where((e) => e.clienteId == item.id),
                      typedResults: items,
                    ),
                ];
              },
            );
          },
        ),
      );
}

typedef $$ClienteTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $ClienteTable,
      ClienteData,
      $$ClienteTableFilterComposer,
      $$ClienteTableOrderingComposer,
      $$ClienteTableAnnotationComposer,
      $$ClienteTableCreateCompanionBuilder,
      $$ClienteTableUpdateCompanionBuilder,
      (ClienteData, $$ClienteTableReferences),
      ClienteData,
      PrefetchHooks Function({bool relatorioRefs})
    >;
typedef $$RelatorioTableCreateCompanionBuilder =
    RelatorioCompanion Function({
      Value<int> id,
      required String identificador,
      required int clienteId,
      required int tipoRelatorio,
      required int status,
      required DateTime dataInicio,
      Value<DateTime?> dataFim,
      required DateTime criadoEm,
      required DateTime atualizadoEm,
    });
typedef $$RelatorioTableUpdateCompanionBuilder =
    RelatorioCompanion Function({
      Value<int> id,
      Value<String> identificador,
      Value<int> clienteId,
      Value<int> tipoRelatorio,
      Value<int> status,
      Value<DateTime> dataInicio,
      Value<DateTime?> dataFim,
      Value<DateTime> criadoEm,
      Value<DateTime> atualizadoEm,
    });

final class $$RelatorioTableReferences
    extends BaseReferences<_$AppDatabase, $RelatorioTable, RelatorioData> {
  $$RelatorioTableReferences(super.$_db, super.$_table, super.$_typedResult);

  static $ClienteTable _clienteIdTable(_$AppDatabase db) =>
      db.cliente.createAlias('relatorios__cliente_id__clientes__id');

  $$ClienteTableProcessedTableManager get clienteId {
    final $_column = $_itemColumn<int>('cliente_id')!;

    final manager = $$ClienteTableTableManager(
      $_db,
      $_db.cliente,
    ).filter((f) => f.id.sqlEquals($_column));
    final item = $_typedResult.readTableOrNull(_clienteIdTable($_db));
    if (item == null) return manager;
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: [item]),
    );
  }

  static MultiTypedResultKey<$SecaoTable, List<SecaoData>> _secaoRefsTable(
    _$AppDatabase db,
  ) => MultiTypedResultKey.fromTable(
    db.secao,
    aliasName: 'relatorios__id__secoes__relatorio_id',
  );

  $$SecaoTableProcessedTableManager get secaoRefs {
    final manager = $$SecaoTableTableManager(
      $_db,
      $_db.secao,
    ).filter((f) => f.relatorioId.id.sqlEquals($_itemColumn<int>('id')!));

    final cache = $_typedResult.readTableOrNull(_secaoRefsTable($_db));
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: cache),
    );
  }

  static MultiTypedResultKey<$VulnerabilidadeTable, List<VulnerabilidadeData>>
  _vulnerabilidadeRefsTable(_$AppDatabase db) => MultiTypedResultKey.fromTable(
    db.vulnerabilidade,
    aliasName: 'relatorios__id__vulnerabilidade__secao_id',
  );

  $$VulnerabilidadeTableProcessedTableManager get vulnerabilidadeRefs {
    final manager = $$VulnerabilidadeTableTableManager(
      $_db,
      $_db.vulnerabilidade,
    ).filter((f) => f.secaoId.id.sqlEquals($_itemColumn<int>('id')!));

    final cache = $_typedResult.readTableOrNull(
      _vulnerabilidadeRefsTable($_db),
    );
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: cache),
    );
  }

  static MultiTypedResultKey<$EscopoTable, List<EscopoData>> _escopoRefsTable(
    _$AppDatabase db,
  ) => MultiTypedResultKey.fromTable(
    db.escopo,
    aliasName: 'relatorios__id__escopo__relatorio_id',
  );

  $$EscopoTableProcessedTableManager get escopoRefs {
    final manager = $$EscopoTableTableManager(
      $_db,
      $_db.escopo,
    ).filter((f) => f.relatorioId.id.sqlEquals($_itemColumn<int>('id')!));

    final cache = $_typedResult.readTableOrNull(_escopoRefsTable($_db));
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: cache),
    );
  }
}

class $$RelatorioTableFilterComposer
    extends Composer<_$AppDatabase, $RelatorioTable> {
  $$RelatorioTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<int> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get identificador => $composableBuilder(
    column: $table.identificador,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get tipoRelatorio => $composableBuilder(
    column: $table.tipoRelatorio,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get status => $composableBuilder(
    column: $table.status,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<DateTime> get dataInicio => $composableBuilder(
    column: $table.dataInicio,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<DateTime> get dataFim => $composableBuilder(
    column: $table.dataFim,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<DateTime> get criadoEm => $composableBuilder(
    column: $table.criadoEm,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<DateTime> get atualizadoEm => $composableBuilder(
    column: $table.atualizadoEm,
    builder: (column) => ColumnFilters(column),
  );

  $$ClienteTableFilterComposer get clienteId {
    final $$ClienteTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.clienteId,
      referencedTable: $db.cliente,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$ClienteTableFilterComposer(
            $db: $db,
            $table: $db.cliente,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }

  Expression<bool> secaoRefs(
    Expression<bool> Function($$SecaoTableFilterComposer f) f,
  ) {
    final $$SecaoTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.id,
      referencedTable: $db.secao,
      getReferencedColumn: (t) => t.relatorioId,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$SecaoTableFilterComposer(
            $db: $db,
            $table: $db.secao,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return f(composer);
  }

  Expression<bool> vulnerabilidadeRefs(
    Expression<bool> Function($$VulnerabilidadeTableFilterComposer f) f,
  ) {
    final $$VulnerabilidadeTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.id,
      referencedTable: $db.vulnerabilidade,
      getReferencedColumn: (t) => t.secaoId,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$VulnerabilidadeTableFilterComposer(
            $db: $db,
            $table: $db.vulnerabilidade,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return f(composer);
  }

  Expression<bool> escopoRefs(
    Expression<bool> Function($$EscopoTableFilterComposer f) f,
  ) {
    final $$EscopoTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.id,
      referencedTable: $db.escopo,
      getReferencedColumn: (t) => t.relatorioId,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$EscopoTableFilterComposer(
            $db: $db,
            $table: $db.escopo,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return f(composer);
  }
}

class $$RelatorioTableOrderingComposer
    extends Composer<_$AppDatabase, $RelatorioTable> {
  $$RelatorioTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<int> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get identificador => $composableBuilder(
    column: $table.identificador,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get tipoRelatorio => $composableBuilder(
    column: $table.tipoRelatorio,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get status => $composableBuilder(
    column: $table.status,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get dataInicio => $composableBuilder(
    column: $table.dataInicio,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get dataFim => $composableBuilder(
    column: $table.dataFim,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get criadoEm => $composableBuilder(
    column: $table.criadoEm,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get atualizadoEm => $composableBuilder(
    column: $table.atualizadoEm,
    builder: (column) => ColumnOrderings(column),
  );

  $$ClienteTableOrderingComposer get clienteId {
    final $$ClienteTableOrderingComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.clienteId,
      referencedTable: $db.cliente,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$ClienteTableOrderingComposer(
            $db: $db,
            $table: $db.cliente,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }
}

class $$RelatorioTableAnnotationComposer
    extends Composer<_$AppDatabase, $RelatorioTable> {
  $$RelatorioTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get identificador => $composableBuilder(
    column: $table.identificador,
    builder: (column) => column,
  );

  GeneratedColumn<int> get tipoRelatorio => $composableBuilder(
    column: $table.tipoRelatorio,
    builder: (column) => column,
  );

  GeneratedColumn<int> get status =>
      $composableBuilder(column: $table.status, builder: (column) => column);

  GeneratedColumn<DateTime> get dataInicio => $composableBuilder(
    column: $table.dataInicio,
    builder: (column) => column,
  );

  GeneratedColumn<DateTime> get dataFim =>
      $composableBuilder(column: $table.dataFim, builder: (column) => column);

  GeneratedColumn<DateTime> get criadoEm =>
      $composableBuilder(column: $table.criadoEm, builder: (column) => column);

  GeneratedColumn<DateTime> get atualizadoEm => $composableBuilder(
    column: $table.atualizadoEm,
    builder: (column) => column,
  );

  $$ClienteTableAnnotationComposer get clienteId {
    final $$ClienteTableAnnotationComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.clienteId,
      referencedTable: $db.cliente,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$ClienteTableAnnotationComposer(
            $db: $db,
            $table: $db.cliente,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }

  Expression<T> secaoRefs<T extends Object>(
    Expression<T> Function($$SecaoTableAnnotationComposer a) f,
  ) {
    final $$SecaoTableAnnotationComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.id,
      referencedTable: $db.secao,
      getReferencedColumn: (t) => t.relatorioId,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$SecaoTableAnnotationComposer(
            $db: $db,
            $table: $db.secao,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return f(composer);
  }

  Expression<T> vulnerabilidadeRefs<T extends Object>(
    Expression<T> Function($$VulnerabilidadeTableAnnotationComposer a) f,
  ) {
    final $$VulnerabilidadeTableAnnotationComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.id,
      referencedTable: $db.vulnerabilidade,
      getReferencedColumn: (t) => t.secaoId,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$VulnerabilidadeTableAnnotationComposer(
            $db: $db,
            $table: $db.vulnerabilidade,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return f(composer);
  }

  Expression<T> escopoRefs<T extends Object>(
    Expression<T> Function($$EscopoTableAnnotationComposer a) f,
  ) {
    final $$EscopoTableAnnotationComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.id,
      referencedTable: $db.escopo,
      getReferencedColumn: (t) => t.relatorioId,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$EscopoTableAnnotationComposer(
            $db: $db,
            $table: $db.escopo,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return f(composer);
  }
}

class $$RelatorioTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $RelatorioTable,
          RelatorioData,
          $$RelatorioTableFilterComposer,
          $$RelatorioTableOrderingComposer,
          $$RelatorioTableAnnotationComposer,
          $$RelatorioTableCreateCompanionBuilder,
          $$RelatorioTableUpdateCompanionBuilder,
          (RelatorioData, $$RelatorioTableReferences),
          RelatorioData,
          PrefetchHooks Function({
            bool clienteId,
            bool secaoRefs,
            bool vulnerabilidadeRefs,
            bool escopoRefs,
          })
        > {
  $$RelatorioTableTableManager(_$AppDatabase db, $RelatorioTable table)
    : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$RelatorioTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$RelatorioTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$RelatorioTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback:
              ({
                Value<int> id = const Value.absent(),
                Value<String> identificador = const Value.absent(),
                Value<int> clienteId = const Value.absent(),
                Value<int> tipoRelatorio = const Value.absent(),
                Value<int> status = const Value.absent(),
                Value<DateTime> dataInicio = const Value.absent(),
                Value<DateTime?> dataFim = const Value.absent(),
                Value<DateTime> criadoEm = const Value.absent(),
                Value<DateTime> atualizadoEm = const Value.absent(),
              }) => RelatorioCompanion(
                id: id,
                identificador: identificador,
                clienteId: clienteId,
                tipoRelatorio: tipoRelatorio,
                status: status,
                dataInicio: dataInicio,
                dataFim: dataFim,
                criadoEm: criadoEm,
                atualizadoEm: atualizadoEm,
              ),
          createCompanionCallback:
              ({
                Value<int> id = const Value.absent(),
                required String identificador,
                required int clienteId,
                required int tipoRelatorio,
                required int status,
                required DateTime dataInicio,
                Value<DateTime?> dataFim = const Value.absent(),
                required DateTime criadoEm,
                required DateTime atualizadoEm,
              }) => RelatorioCompanion.insert(
                id: id,
                identificador: identificador,
                clienteId: clienteId,
                tipoRelatorio: tipoRelatorio,
                status: status,
                dataInicio: dataInicio,
                dataFim: dataFim,
                criadoEm: criadoEm,
                atualizadoEm: atualizadoEm,
              ),
          withReferenceMapper: (p0) => p0
              .map(
                (e) => (
                  e.readTable(table),
                  $$RelatorioTableReferences(db, table, e),
                ),
              )
              .toList(),
          prefetchHooksCallback:
              ({
                clienteId = false,
                secaoRefs = false,
                vulnerabilidadeRefs = false,
                escopoRefs = false,
              }) {
                return PrefetchHooks(
                  db: db,
                  explicitlyWatchedTables: [
                    if (secaoRefs) db.secao,
                    if (vulnerabilidadeRefs) db.vulnerabilidade,
                    if (escopoRefs) db.escopo,
                  ],
                  addJoins:
                      <
                        T extends TableManagerState<
                          dynamic,
                          dynamic,
                          dynamic,
                          dynamic,
                          dynamic,
                          dynamic,
                          dynamic,
                          dynamic,
                          dynamic,
                          dynamic,
                          dynamic
                        >
                      >(state) {
                        if (clienteId) {
                          state =
                              state.withJoin(
                                    currentTable: table,
                                    currentColumn: table.clienteId,
                                    referencedTable: $$RelatorioTableReferences
                                        ._clienteIdTable(db),
                                    referencedColumn: $$RelatorioTableReferences
                                        ._clienteIdTable(db)
                                        .id,
                                  )
                                  as T;
                        }

                        return state;
                      },
                  getPrefetchedDataCallback: (items) async {
                    return [
                      if (secaoRefs)
                        await $_getPrefetchedData<
                          RelatorioData,
                          $RelatorioTable,
                          SecaoData
                        >(
                          currentTable: table,
                          referencedTable: $$RelatorioTableReferences
                              ._secaoRefsTable(db),
                          managerFromTypedResult: (p0) =>
                              $$RelatorioTableReferences(
                                db,
                                table,
                                p0,
                              ).secaoRefs,
                          referencedItemsForCurrentItem:
                              (item, referencedItems) => referencedItems.where(
                                (e) => e.relatorioId == item.id,
                              ),
                          typedResults: items,
                        ),
                      if (vulnerabilidadeRefs)
                        await $_getPrefetchedData<
                          RelatorioData,
                          $RelatorioTable,
                          VulnerabilidadeData
                        >(
                          currentTable: table,
                          referencedTable: $$RelatorioTableReferences
                              ._vulnerabilidadeRefsTable(db),
                          managerFromTypedResult: (p0) =>
                              $$RelatorioTableReferences(
                                db,
                                table,
                                p0,
                              ).vulnerabilidadeRefs,
                          referencedItemsForCurrentItem:
                              (item, referencedItems) => referencedItems.where(
                                (e) => e.secaoId == item.id,
                              ),
                          typedResults: items,
                        ),
                      if (escopoRefs)
                        await $_getPrefetchedData<
                          RelatorioData,
                          $RelatorioTable,
                          EscopoData
                        >(
                          currentTable: table,
                          referencedTable: $$RelatorioTableReferences
                              ._escopoRefsTable(db),
                          managerFromTypedResult: (p0) =>
                              $$RelatorioTableReferences(
                                db,
                                table,
                                p0,
                              ).escopoRefs,
                          referencedItemsForCurrentItem:
                              (item, referencedItems) => referencedItems.where(
                                (e) => e.relatorioId == item.id,
                              ),
                          typedResults: items,
                        ),
                    ];
                  },
                );
              },
        ),
      );
}

typedef $$RelatorioTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $RelatorioTable,
      RelatorioData,
      $$RelatorioTableFilterComposer,
      $$RelatorioTableOrderingComposer,
      $$RelatorioTableAnnotationComposer,
      $$RelatorioTableCreateCompanionBuilder,
      $$RelatorioTableUpdateCompanionBuilder,
      (RelatorioData, $$RelatorioTableReferences),
      RelatorioData,
      PrefetchHooks Function({
        bool clienteId,
        bool secaoRefs,
        bool vulnerabilidadeRefs,
        bool escopoRefs,
      })
    >;
typedef $$SecaoTableCreateCompanionBuilder =
    SecaoCompanion Function({
      Value<int> id,
      required String identificador,
      required int relatorioId,
      required int tipoSecao,
      required String conteudo,
      required int ordem,
      required DateTime criadoEm,
      required DateTime atualizadoEm,
    });
typedef $$SecaoTableUpdateCompanionBuilder =
    SecaoCompanion Function({
      Value<int> id,
      Value<String> identificador,
      Value<int> relatorioId,
      Value<int> tipoSecao,
      Value<String> conteudo,
      Value<int> ordem,
      Value<DateTime> criadoEm,
      Value<DateTime> atualizadoEm,
    });

final class $$SecaoTableReferences
    extends BaseReferences<_$AppDatabase, $SecaoTable, SecaoData> {
  $$SecaoTableReferences(super.$_db, super.$_table, super.$_typedResult);

  static $RelatorioTable _relatorioIdTable(_$AppDatabase db) =>
      db.relatorio.createAlias('secoes__relatorio_id__relatorios__id');

  $$RelatorioTableProcessedTableManager get relatorioId {
    final $_column = $_itemColumn<int>('relatorio_id')!;

    final manager = $$RelatorioTableTableManager(
      $_db,
      $_db.relatorio,
    ).filter((f) => f.id.sqlEquals($_column));
    final item = $_typedResult.readTableOrNull(_relatorioIdTable($_db));
    if (item == null) return manager;
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: [item]),
    );
  }
}

class $$SecaoTableFilterComposer extends Composer<_$AppDatabase, $SecaoTable> {
  $$SecaoTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<int> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get identificador => $composableBuilder(
    column: $table.identificador,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get tipoSecao => $composableBuilder(
    column: $table.tipoSecao,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get conteudo => $composableBuilder(
    column: $table.conteudo,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get ordem => $composableBuilder(
    column: $table.ordem,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<DateTime> get criadoEm => $composableBuilder(
    column: $table.criadoEm,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<DateTime> get atualizadoEm => $composableBuilder(
    column: $table.atualizadoEm,
    builder: (column) => ColumnFilters(column),
  );

  $$RelatorioTableFilterComposer get relatorioId {
    final $$RelatorioTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.relatorioId,
      referencedTable: $db.relatorio,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$RelatorioTableFilterComposer(
            $db: $db,
            $table: $db.relatorio,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }
}

class $$SecaoTableOrderingComposer
    extends Composer<_$AppDatabase, $SecaoTable> {
  $$SecaoTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<int> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get identificador => $composableBuilder(
    column: $table.identificador,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get tipoSecao => $composableBuilder(
    column: $table.tipoSecao,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get conteudo => $composableBuilder(
    column: $table.conteudo,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get ordem => $composableBuilder(
    column: $table.ordem,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get criadoEm => $composableBuilder(
    column: $table.criadoEm,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get atualizadoEm => $composableBuilder(
    column: $table.atualizadoEm,
    builder: (column) => ColumnOrderings(column),
  );

  $$RelatorioTableOrderingComposer get relatorioId {
    final $$RelatorioTableOrderingComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.relatorioId,
      referencedTable: $db.relatorio,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$RelatorioTableOrderingComposer(
            $db: $db,
            $table: $db.relatorio,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }
}

class $$SecaoTableAnnotationComposer
    extends Composer<_$AppDatabase, $SecaoTable> {
  $$SecaoTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get identificador => $composableBuilder(
    column: $table.identificador,
    builder: (column) => column,
  );

  GeneratedColumn<int> get tipoSecao =>
      $composableBuilder(column: $table.tipoSecao, builder: (column) => column);

  GeneratedColumn<String> get conteudo =>
      $composableBuilder(column: $table.conteudo, builder: (column) => column);

  GeneratedColumn<int> get ordem =>
      $composableBuilder(column: $table.ordem, builder: (column) => column);

  GeneratedColumn<DateTime> get criadoEm =>
      $composableBuilder(column: $table.criadoEm, builder: (column) => column);

  GeneratedColumn<DateTime> get atualizadoEm => $composableBuilder(
    column: $table.atualizadoEm,
    builder: (column) => column,
  );

  $$RelatorioTableAnnotationComposer get relatorioId {
    final $$RelatorioTableAnnotationComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.relatorioId,
      referencedTable: $db.relatorio,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$RelatorioTableAnnotationComposer(
            $db: $db,
            $table: $db.relatorio,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }
}

class $$SecaoTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $SecaoTable,
          SecaoData,
          $$SecaoTableFilterComposer,
          $$SecaoTableOrderingComposer,
          $$SecaoTableAnnotationComposer,
          $$SecaoTableCreateCompanionBuilder,
          $$SecaoTableUpdateCompanionBuilder,
          (SecaoData, $$SecaoTableReferences),
          SecaoData,
          PrefetchHooks Function({bool relatorioId})
        > {
  $$SecaoTableTableManager(_$AppDatabase db, $SecaoTable table)
    : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$SecaoTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$SecaoTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$SecaoTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback:
              ({
                Value<int> id = const Value.absent(),
                Value<String> identificador = const Value.absent(),
                Value<int> relatorioId = const Value.absent(),
                Value<int> tipoSecao = const Value.absent(),
                Value<String> conteudo = const Value.absent(),
                Value<int> ordem = const Value.absent(),
                Value<DateTime> criadoEm = const Value.absent(),
                Value<DateTime> atualizadoEm = const Value.absent(),
              }) => SecaoCompanion(
                id: id,
                identificador: identificador,
                relatorioId: relatorioId,
                tipoSecao: tipoSecao,
                conteudo: conteudo,
                ordem: ordem,
                criadoEm: criadoEm,
                atualizadoEm: atualizadoEm,
              ),
          createCompanionCallback:
              ({
                Value<int> id = const Value.absent(),
                required String identificador,
                required int relatorioId,
                required int tipoSecao,
                required String conteudo,
                required int ordem,
                required DateTime criadoEm,
                required DateTime atualizadoEm,
              }) => SecaoCompanion.insert(
                id: id,
                identificador: identificador,
                relatorioId: relatorioId,
                tipoSecao: tipoSecao,
                conteudo: conteudo,
                ordem: ordem,
                criadoEm: criadoEm,
                atualizadoEm: atualizadoEm,
              ),
          withReferenceMapper: (p0) => p0
              .map(
                (e) =>
                    (e.readTable(table), $$SecaoTableReferences(db, table, e)),
              )
              .toList(),
          prefetchHooksCallback: ({relatorioId = false}) {
            return PrefetchHooks(
              db: db,
              explicitlyWatchedTables: [],
              addJoins:
                  <
                    T extends TableManagerState<
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic
                    >
                  >(state) {
                    if (relatorioId) {
                      state =
                          state.withJoin(
                                currentTable: table,
                                currentColumn: table.relatorioId,
                                referencedTable: $$SecaoTableReferences
                                    ._relatorioIdTable(db),
                                referencedColumn: $$SecaoTableReferences
                                    ._relatorioIdTable(db)
                                    .id,
                              )
                              as T;
                    }

                    return state;
                  },
              getPrefetchedDataCallback: (items) async {
                return [];
              },
            );
          },
        ),
      );
}

typedef $$SecaoTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $SecaoTable,
      SecaoData,
      $$SecaoTableFilterComposer,
      $$SecaoTableOrderingComposer,
      $$SecaoTableAnnotationComposer,
      $$SecaoTableCreateCompanionBuilder,
      $$SecaoTableUpdateCompanionBuilder,
      (SecaoData, $$SecaoTableReferences),
      SecaoData,
      PrefetchHooks Function({bool relatorioId})
    >;
typedef $$VulnerabilidadeTableCreateCompanionBuilder =
    VulnerabilidadeCompanion Function({
      Value<int> id,
      required String identificador,
      required int secaoId,
      required String titulo,
      required String descricao,
      required int severidade,
      required String pontuacaoCVSS,
      required String impacto,
      required String recomendacao,
      Value<String?> referencias,
      required int status,
      required DateTime criadoEm,
      required DateTime atualizadoEm,
    });
typedef $$VulnerabilidadeTableUpdateCompanionBuilder =
    VulnerabilidadeCompanion Function({
      Value<int> id,
      Value<String> identificador,
      Value<int> secaoId,
      Value<String> titulo,
      Value<String> descricao,
      Value<int> severidade,
      Value<String> pontuacaoCVSS,
      Value<String> impacto,
      Value<String> recomendacao,
      Value<String?> referencias,
      Value<int> status,
      Value<DateTime> criadoEm,
      Value<DateTime> atualizadoEm,
    });

final class $$VulnerabilidadeTableReferences
    extends
        BaseReferences<
          _$AppDatabase,
          $VulnerabilidadeTable,
          VulnerabilidadeData
        > {
  $$VulnerabilidadeTableReferences(
    super.$_db,
    super.$_table,
    super.$_typedResult,
  );

  static $RelatorioTable _secaoIdTable(_$AppDatabase db) =>
      db.relatorio.createAlias('vulnerabilidade__secao_id__relatorios__id');

  $$RelatorioTableProcessedTableManager get secaoId {
    final $_column = $_itemColumn<int>('secao_id')!;

    final manager = $$RelatorioTableTableManager(
      $_db,
      $_db.relatorio,
    ).filter((f) => f.id.sqlEquals($_column));
    final item = $_typedResult.readTableOrNull(_secaoIdTable($_db));
    if (item == null) return manager;
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: [item]),
    );
  }

  static MultiTypedResultKey<$EvidenciaTable, List<EvidenciaData>>
  _evidenciaRefsTable(_$AppDatabase db) => MultiTypedResultKey.fromTable(
    db.evidencia,
    aliasName: 'vulnerabilidade__id__evidencia__vulnerabilidade_id',
  );

  $$EvidenciaTableProcessedTableManager get evidenciaRefs {
    final manager = $$EvidenciaTableTableManager(
      $_db,
      $_db.evidencia,
    ).filter((f) => f.vulnerabilidadeId.id.sqlEquals($_itemColumn<int>('id')!));

    final cache = $_typedResult.readTableOrNull(_evidenciaRefsTable($_db));
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: cache),
    );
  }
}

class $$VulnerabilidadeTableFilterComposer
    extends Composer<_$AppDatabase, $VulnerabilidadeTable> {
  $$VulnerabilidadeTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<int> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get identificador => $composableBuilder(
    column: $table.identificador,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get titulo => $composableBuilder(
    column: $table.titulo,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get descricao => $composableBuilder(
    column: $table.descricao,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get severidade => $composableBuilder(
    column: $table.severidade,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get pontuacaoCVSS => $composableBuilder(
    column: $table.pontuacaoCVSS,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get impacto => $composableBuilder(
    column: $table.impacto,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get recomendacao => $composableBuilder(
    column: $table.recomendacao,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get referencias => $composableBuilder(
    column: $table.referencias,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get status => $composableBuilder(
    column: $table.status,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<DateTime> get criadoEm => $composableBuilder(
    column: $table.criadoEm,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<DateTime> get atualizadoEm => $composableBuilder(
    column: $table.atualizadoEm,
    builder: (column) => ColumnFilters(column),
  );

  $$RelatorioTableFilterComposer get secaoId {
    final $$RelatorioTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.secaoId,
      referencedTable: $db.relatorio,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$RelatorioTableFilterComposer(
            $db: $db,
            $table: $db.relatorio,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }

  Expression<bool> evidenciaRefs(
    Expression<bool> Function($$EvidenciaTableFilterComposer f) f,
  ) {
    final $$EvidenciaTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.id,
      referencedTable: $db.evidencia,
      getReferencedColumn: (t) => t.vulnerabilidadeId,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$EvidenciaTableFilterComposer(
            $db: $db,
            $table: $db.evidencia,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return f(composer);
  }
}

class $$VulnerabilidadeTableOrderingComposer
    extends Composer<_$AppDatabase, $VulnerabilidadeTable> {
  $$VulnerabilidadeTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<int> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get identificador => $composableBuilder(
    column: $table.identificador,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get titulo => $composableBuilder(
    column: $table.titulo,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get descricao => $composableBuilder(
    column: $table.descricao,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get severidade => $composableBuilder(
    column: $table.severidade,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get pontuacaoCVSS => $composableBuilder(
    column: $table.pontuacaoCVSS,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get impacto => $composableBuilder(
    column: $table.impacto,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get recomendacao => $composableBuilder(
    column: $table.recomendacao,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get referencias => $composableBuilder(
    column: $table.referencias,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get status => $composableBuilder(
    column: $table.status,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get criadoEm => $composableBuilder(
    column: $table.criadoEm,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get atualizadoEm => $composableBuilder(
    column: $table.atualizadoEm,
    builder: (column) => ColumnOrderings(column),
  );

  $$RelatorioTableOrderingComposer get secaoId {
    final $$RelatorioTableOrderingComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.secaoId,
      referencedTable: $db.relatorio,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$RelatorioTableOrderingComposer(
            $db: $db,
            $table: $db.relatorio,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }
}

class $$VulnerabilidadeTableAnnotationComposer
    extends Composer<_$AppDatabase, $VulnerabilidadeTable> {
  $$VulnerabilidadeTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get identificador => $composableBuilder(
    column: $table.identificador,
    builder: (column) => column,
  );

  GeneratedColumn<String> get titulo =>
      $composableBuilder(column: $table.titulo, builder: (column) => column);

  GeneratedColumn<String> get descricao =>
      $composableBuilder(column: $table.descricao, builder: (column) => column);

  GeneratedColumn<int> get severidade => $composableBuilder(
    column: $table.severidade,
    builder: (column) => column,
  );

  GeneratedColumn<String> get pontuacaoCVSS => $composableBuilder(
    column: $table.pontuacaoCVSS,
    builder: (column) => column,
  );

  GeneratedColumn<String> get impacto =>
      $composableBuilder(column: $table.impacto, builder: (column) => column);

  GeneratedColumn<String> get recomendacao => $composableBuilder(
    column: $table.recomendacao,
    builder: (column) => column,
  );

  GeneratedColumn<String> get referencias => $composableBuilder(
    column: $table.referencias,
    builder: (column) => column,
  );

  GeneratedColumn<int> get status =>
      $composableBuilder(column: $table.status, builder: (column) => column);

  GeneratedColumn<DateTime> get criadoEm =>
      $composableBuilder(column: $table.criadoEm, builder: (column) => column);

  GeneratedColumn<DateTime> get atualizadoEm => $composableBuilder(
    column: $table.atualizadoEm,
    builder: (column) => column,
  );

  $$RelatorioTableAnnotationComposer get secaoId {
    final $$RelatorioTableAnnotationComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.secaoId,
      referencedTable: $db.relatorio,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$RelatorioTableAnnotationComposer(
            $db: $db,
            $table: $db.relatorio,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }

  Expression<T> evidenciaRefs<T extends Object>(
    Expression<T> Function($$EvidenciaTableAnnotationComposer a) f,
  ) {
    final $$EvidenciaTableAnnotationComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.id,
      referencedTable: $db.evidencia,
      getReferencedColumn: (t) => t.vulnerabilidadeId,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$EvidenciaTableAnnotationComposer(
            $db: $db,
            $table: $db.evidencia,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return f(composer);
  }
}

class $$VulnerabilidadeTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $VulnerabilidadeTable,
          VulnerabilidadeData,
          $$VulnerabilidadeTableFilterComposer,
          $$VulnerabilidadeTableOrderingComposer,
          $$VulnerabilidadeTableAnnotationComposer,
          $$VulnerabilidadeTableCreateCompanionBuilder,
          $$VulnerabilidadeTableUpdateCompanionBuilder,
          (VulnerabilidadeData, $$VulnerabilidadeTableReferences),
          VulnerabilidadeData,
          PrefetchHooks Function({bool secaoId, bool evidenciaRefs})
        > {
  $$VulnerabilidadeTableTableManager(
    _$AppDatabase db,
    $VulnerabilidadeTable table,
  ) : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$VulnerabilidadeTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$VulnerabilidadeTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$VulnerabilidadeTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback:
              ({
                Value<int> id = const Value.absent(),
                Value<String> identificador = const Value.absent(),
                Value<int> secaoId = const Value.absent(),
                Value<String> titulo = const Value.absent(),
                Value<String> descricao = const Value.absent(),
                Value<int> severidade = const Value.absent(),
                Value<String> pontuacaoCVSS = const Value.absent(),
                Value<String> impacto = const Value.absent(),
                Value<String> recomendacao = const Value.absent(),
                Value<String?> referencias = const Value.absent(),
                Value<int> status = const Value.absent(),
                Value<DateTime> criadoEm = const Value.absent(),
                Value<DateTime> atualizadoEm = const Value.absent(),
              }) => VulnerabilidadeCompanion(
                id: id,
                identificador: identificador,
                secaoId: secaoId,
                titulo: titulo,
                descricao: descricao,
                severidade: severidade,
                pontuacaoCVSS: pontuacaoCVSS,
                impacto: impacto,
                recomendacao: recomendacao,
                referencias: referencias,
                status: status,
                criadoEm: criadoEm,
                atualizadoEm: atualizadoEm,
              ),
          createCompanionCallback:
              ({
                Value<int> id = const Value.absent(),
                required String identificador,
                required int secaoId,
                required String titulo,
                required String descricao,
                required int severidade,
                required String pontuacaoCVSS,
                required String impacto,
                required String recomendacao,
                Value<String?> referencias = const Value.absent(),
                required int status,
                required DateTime criadoEm,
                required DateTime atualizadoEm,
              }) => VulnerabilidadeCompanion.insert(
                id: id,
                identificador: identificador,
                secaoId: secaoId,
                titulo: titulo,
                descricao: descricao,
                severidade: severidade,
                pontuacaoCVSS: pontuacaoCVSS,
                impacto: impacto,
                recomendacao: recomendacao,
                referencias: referencias,
                status: status,
                criadoEm: criadoEm,
                atualizadoEm: atualizadoEm,
              ),
          withReferenceMapper: (p0) => p0
              .map(
                (e) => (
                  e.readTable(table),
                  $$VulnerabilidadeTableReferences(db, table, e),
                ),
              )
              .toList(),
          prefetchHooksCallback: ({secaoId = false, evidenciaRefs = false}) {
            return PrefetchHooks(
              db: db,
              explicitlyWatchedTables: [if (evidenciaRefs) db.evidencia],
              addJoins:
                  <
                    T extends TableManagerState<
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic
                    >
                  >(state) {
                    if (secaoId) {
                      state =
                          state.withJoin(
                                currentTable: table,
                                currentColumn: table.secaoId,
                                referencedTable:
                                    $$VulnerabilidadeTableReferences
                                        ._secaoIdTable(db),
                                referencedColumn:
                                    $$VulnerabilidadeTableReferences
                                        ._secaoIdTable(db)
                                        .id,
                              )
                              as T;
                    }

                    return state;
                  },
              getPrefetchedDataCallback: (items) async {
                return [
                  if (evidenciaRefs)
                    await $_getPrefetchedData<
                      VulnerabilidadeData,
                      $VulnerabilidadeTable,
                      EvidenciaData
                    >(
                      currentTable: table,
                      referencedTable: $$VulnerabilidadeTableReferences
                          ._evidenciaRefsTable(db),
                      managerFromTypedResult: (p0) =>
                          $$VulnerabilidadeTableReferences(
                            db,
                            table,
                            p0,
                          ).evidenciaRefs,
                      referencedItemsForCurrentItem: (item, referencedItems) =>
                          referencedItems.where(
                            (e) => e.vulnerabilidadeId == item.id,
                          ),
                      typedResults: items,
                    ),
                ];
              },
            );
          },
        ),
      );
}

typedef $$VulnerabilidadeTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $VulnerabilidadeTable,
      VulnerabilidadeData,
      $$VulnerabilidadeTableFilterComposer,
      $$VulnerabilidadeTableOrderingComposer,
      $$VulnerabilidadeTableAnnotationComposer,
      $$VulnerabilidadeTableCreateCompanionBuilder,
      $$VulnerabilidadeTableUpdateCompanionBuilder,
      (VulnerabilidadeData, $$VulnerabilidadeTableReferences),
      VulnerabilidadeData,
      PrefetchHooks Function({bool secaoId, bool evidenciaRefs})
    >;
typedef $$EvidenciaTableCreateCompanionBuilder =
    EvidenciaCompanion Function({
      Value<int> id,
      required String identificador,
      required int vulnerabilidadeId,
      required String caminho,
      required String arquivo,
      required String tipo,
      Value<String?> descricao,
      required int ordem,
      required DateTime criadoEm,
      required DateTime atualizadoEm,
    });
typedef $$EvidenciaTableUpdateCompanionBuilder =
    EvidenciaCompanion Function({
      Value<int> id,
      Value<String> identificador,
      Value<int> vulnerabilidadeId,
      Value<String> caminho,
      Value<String> arquivo,
      Value<String> tipo,
      Value<String?> descricao,
      Value<int> ordem,
      Value<DateTime> criadoEm,
      Value<DateTime> atualizadoEm,
    });

final class $$EvidenciaTableReferences
    extends BaseReferences<_$AppDatabase, $EvidenciaTable, EvidenciaData> {
  $$EvidenciaTableReferences(super.$_db, super.$_table, super.$_typedResult);

  static $VulnerabilidadeTable _vulnerabilidadeIdTable(_$AppDatabase db) => db
      .vulnerabilidade
      .createAlias('evidencia__vulnerabilidade_id__vulnerabilidade__id');

  $$VulnerabilidadeTableProcessedTableManager get vulnerabilidadeId {
    final $_column = $_itemColumn<int>('vulnerabilidade_id')!;

    final manager = $$VulnerabilidadeTableTableManager(
      $_db,
      $_db.vulnerabilidade,
    ).filter((f) => f.id.sqlEquals($_column));
    final item = $_typedResult.readTableOrNull(_vulnerabilidadeIdTable($_db));
    if (item == null) return manager;
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: [item]),
    );
  }
}

class $$EvidenciaTableFilterComposer
    extends Composer<_$AppDatabase, $EvidenciaTable> {
  $$EvidenciaTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<int> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get identificador => $composableBuilder(
    column: $table.identificador,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get caminho => $composableBuilder(
    column: $table.caminho,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get arquivo => $composableBuilder(
    column: $table.arquivo,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get tipo => $composableBuilder(
    column: $table.tipo,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get descricao => $composableBuilder(
    column: $table.descricao,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get ordem => $composableBuilder(
    column: $table.ordem,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<DateTime> get criadoEm => $composableBuilder(
    column: $table.criadoEm,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<DateTime> get atualizadoEm => $composableBuilder(
    column: $table.atualizadoEm,
    builder: (column) => ColumnFilters(column),
  );

  $$VulnerabilidadeTableFilterComposer get vulnerabilidadeId {
    final $$VulnerabilidadeTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.vulnerabilidadeId,
      referencedTable: $db.vulnerabilidade,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$VulnerabilidadeTableFilterComposer(
            $db: $db,
            $table: $db.vulnerabilidade,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }
}

class $$EvidenciaTableOrderingComposer
    extends Composer<_$AppDatabase, $EvidenciaTable> {
  $$EvidenciaTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<int> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get identificador => $composableBuilder(
    column: $table.identificador,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get caminho => $composableBuilder(
    column: $table.caminho,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get arquivo => $composableBuilder(
    column: $table.arquivo,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get tipo => $composableBuilder(
    column: $table.tipo,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get descricao => $composableBuilder(
    column: $table.descricao,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get ordem => $composableBuilder(
    column: $table.ordem,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get criadoEm => $composableBuilder(
    column: $table.criadoEm,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get atualizadoEm => $composableBuilder(
    column: $table.atualizadoEm,
    builder: (column) => ColumnOrderings(column),
  );

  $$VulnerabilidadeTableOrderingComposer get vulnerabilidadeId {
    final $$VulnerabilidadeTableOrderingComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.vulnerabilidadeId,
      referencedTable: $db.vulnerabilidade,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$VulnerabilidadeTableOrderingComposer(
            $db: $db,
            $table: $db.vulnerabilidade,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }
}

class $$EvidenciaTableAnnotationComposer
    extends Composer<_$AppDatabase, $EvidenciaTable> {
  $$EvidenciaTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get identificador => $composableBuilder(
    column: $table.identificador,
    builder: (column) => column,
  );

  GeneratedColumn<String> get caminho =>
      $composableBuilder(column: $table.caminho, builder: (column) => column);

  GeneratedColumn<String> get arquivo =>
      $composableBuilder(column: $table.arquivo, builder: (column) => column);

  GeneratedColumn<String> get tipo =>
      $composableBuilder(column: $table.tipo, builder: (column) => column);

  GeneratedColumn<String> get descricao =>
      $composableBuilder(column: $table.descricao, builder: (column) => column);

  GeneratedColumn<int> get ordem =>
      $composableBuilder(column: $table.ordem, builder: (column) => column);

  GeneratedColumn<DateTime> get criadoEm =>
      $composableBuilder(column: $table.criadoEm, builder: (column) => column);

  GeneratedColumn<DateTime> get atualizadoEm => $composableBuilder(
    column: $table.atualizadoEm,
    builder: (column) => column,
  );

  $$VulnerabilidadeTableAnnotationComposer get vulnerabilidadeId {
    final $$VulnerabilidadeTableAnnotationComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.vulnerabilidadeId,
      referencedTable: $db.vulnerabilidade,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$VulnerabilidadeTableAnnotationComposer(
            $db: $db,
            $table: $db.vulnerabilidade,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }
}

class $$EvidenciaTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $EvidenciaTable,
          EvidenciaData,
          $$EvidenciaTableFilterComposer,
          $$EvidenciaTableOrderingComposer,
          $$EvidenciaTableAnnotationComposer,
          $$EvidenciaTableCreateCompanionBuilder,
          $$EvidenciaTableUpdateCompanionBuilder,
          (EvidenciaData, $$EvidenciaTableReferences),
          EvidenciaData,
          PrefetchHooks Function({bool vulnerabilidadeId})
        > {
  $$EvidenciaTableTableManager(_$AppDatabase db, $EvidenciaTable table)
    : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$EvidenciaTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$EvidenciaTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$EvidenciaTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback:
              ({
                Value<int> id = const Value.absent(),
                Value<String> identificador = const Value.absent(),
                Value<int> vulnerabilidadeId = const Value.absent(),
                Value<String> caminho = const Value.absent(),
                Value<String> arquivo = const Value.absent(),
                Value<String> tipo = const Value.absent(),
                Value<String?> descricao = const Value.absent(),
                Value<int> ordem = const Value.absent(),
                Value<DateTime> criadoEm = const Value.absent(),
                Value<DateTime> atualizadoEm = const Value.absent(),
              }) => EvidenciaCompanion(
                id: id,
                identificador: identificador,
                vulnerabilidadeId: vulnerabilidadeId,
                caminho: caminho,
                arquivo: arquivo,
                tipo: tipo,
                descricao: descricao,
                ordem: ordem,
                criadoEm: criadoEm,
                atualizadoEm: atualizadoEm,
              ),
          createCompanionCallback:
              ({
                Value<int> id = const Value.absent(),
                required String identificador,
                required int vulnerabilidadeId,
                required String caminho,
                required String arquivo,
                required String tipo,
                Value<String?> descricao = const Value.absent(),
                required int ordem,
                required DateTime criadoEm,
                required DateTime atualizadoEm,
              }) => EvidenciaCompanion.insert(
                id: id,
                identificador: identificador,
                vulnerabilidadeId: vulnerabilidadeId,
                caminho: caminho,
                arquivo: arquivo,
                tipo: tipo,
                descricao: descricao,
                ordem: ordem,
                criadoEm: criadoEm,
                atualizadoEm: atualizadoEm,
              ),
          withReferenceMapper: (p0) => p0
              .map(
                (e) => (
                  e.readTable(table),
                  $$EvidenciaTableReferences(db, table, e),
                ),
              )
              .toList(),
          prefetchHooksCallback: ({vulnerabilidadeId = false}) {
            return PrefetchHooks(
              db: db,
              explicitlyWatchedTables: [],
              addJoins:
                  <
                    T extends TableManagerState<
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic
                    >
                  >(state) {
                    if (vulnerabilidadeId) {
                      state =
                          state.withJoin(
                                currentTable: table,
                                currentColumn: table.vulnerabilidadeId,
                                referencedTable: $$EvidenciaTableReferences
                                    ._vulnerabilidadeIdTable(db),
                                referencedColumn: $$EvidenciaTableReferences
                                    ._vulnerabilidadeIdTable(db)
                                    .id,
                              )
                              as T;
                    }

                    return state;
                  },
              getPrefetchedDataCallback: (items) async {
                return [];
              },
            );
          },
        ),
      );
}

typedef $$EvidenciaTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $EvidenciaTable,
      EvidenciaData,
      $$EvidenciaTableFilterComposer,
      $$EvidenciaTableOrderingComposer,
      $$EvidenciaTableAnnotationComposer,
      $$EvidenciaTableCreateCompanionBuilder,
      $$EvidenciaTableUpdateCompanionBuilder,
      (EvidenciaData, $$EvidenciaTableReferences),
      EvidenciaData,
      PrefetchHooks Function({bool vulnerabilidadeId})
    >;
typedef $$EscopoTableCreateCompanionBuilder =
    EscopoCompanion Function({
      Value<int> id,
      required String identificador,
      required int relatorioId,
      required int tipoEscopo,
      required String valor,
      required DateTime criadoEm,
      required DateTime atualizadoEm,
    });
typedef $$EscopoTableUpdateCompanionBuilder =
    EscopoCompanion Function({
      Value<int> id,
      Value<String> identificador,
      Value<int> relatorioId,
      Value<int> tipoEscopo,
      Value<String> valor,
      Value<DateTime> criadoEm,
      Value<DateTime> atualizadoEm,
    });

final class $$EscopoTableReferences
    extends BaseReferences<_$AppDatabase, $EscopoTable, EscopoData> {
  $$EscopoTableReferences(super.$_db, super.$_table, super.$_typedResult);

  static $RelatorioTable _relatorioIdTable(_$AppDatabase db) =>
      db.relatorio.createAlias('escopo__relatorio_id__relatorios__id');

  $$RelatorioTableProcessedTableManager get relatorioId {
    final $_column = $_itemColumn<int>('relatorio_id')!;

    final manager = $$RelatorioTableTableManager(
      $_db,
      $_db.relatorio,
    ).filter((f) => f.id.sqlEquals($_column));
    final item = $_typedResult.readTableOrNull(_relatorioIdTable($_db));
    if (item == null) return manager;
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: [item]),
    );
  }
}

class $$EscopoTableFilterComposer
    extends Composer<_$AppDatabase, $EscopoTable> {
  $$EscopoTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<int> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get identificador => $composableBuilder(
    column: $table.identificador,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get tipoEscopo => $composableBuilder(
    column: $table.tipoEscopo,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get valor => $composableBuilder(
    column: $table.valor,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<DateTime> get criadoEm => $composableBuilder(
    column: $table.criadoEm,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<DateTime> get atualizadoEm => $composableBuilder(
    column: $table.atualizadoEm,
    builder: (column) => ColumnFilters(column),
  );

  $$RelatorioTableFilterComposer get relatorioId {
    final $$RelatorioTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.relatorioId,
      referencedTable: $db.relatorio,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$RelatorioTableFilterComposer(
            $db: $db,
            $table: $db.relatorio,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }
}

class $$EscopoTableOrderingComposer
    extends Composer<_$AppDatabase, $EscopoTable> {
  $$EscopoTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<int> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get identificador => $composableBuilder(
    column: $table.identificador,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get tipoEscopo => $composableBuilder(
    column: $table.tipoEscopo,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get valor => $composableBuilder(
    column: $table.valor,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get criadoEm => $composableBuilder(
    column: $table.criadoEm,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get atualizadoEm => $composableBuilder(
    column: $table.atualizadoEm,
    builder: (column) => ColumnOrderings(column),
  );

  $$RelatorioTableOrderingComposer get relatorioId {
    final $$RelatorioTableOrderingComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.relatorioId,
      referencedTable: $db.relatorio,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$RelatorioTableOrderingComposer(
            $db: $db,
            $table: $db.relatorio,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }
}

class $$EscopoTableAnnotationComposer
    extends Composer<_$AppDatabase, $EscopoTable> {
  $$EscopoTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get identificador => $composableBuilder(
    column: $table.identificador,
    builder: (column) => column,
  );

  GeneratedColumn<int> get tipoEscopo => $composableBuilder(
    column: $table.tipoEscopo,
    builder: (column) => column,
  );

  GeneratedColumn<String> get valor =>
      $composableBuilder(column: $table.valor, builder: (column) => column);

  GeneratedColumn<DateTime> get criadoEm =>
      $composableBuilder(column: $table.criadoEm, builder: (column) => column);

  GeneratedColumn<DateTime> get atualizadoEm => $composableBuilder(
    column: $table.atualizadoEm,
    builder: (column) => column,
  );

  $$RelatorioTableAnnotationComposer get relatorioId {
    final $$RelatorioTableAnnotationComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.relatorioId,
      referencedTable: $db.relatorio,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$RelatorioTableAnnotationComposer(
            $db: $db,
            $table: $db.relatorio,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }
}

class $$EscopoTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $EscopoTable,
          EscopoData,
          $$EscopoTableFilterComposer,
          $$EscopoTableOrderingComposer,
          $$EscopoTableAnnotationComposer,
          $$EscopoTableCreateCompanionBuilder,
          $$EscopoTableUpdateCompanionBuilder,
          (EscopoData, $$EscopoTableReferences),
          EscopoData,
          PrefetchHooks Function({bool relatorioId})
        > {
  $$EscopoTableTableManager(_$AppDatabase db, $EscopoTable table)
    : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$EscopoTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$EscopoTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$EscopoTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback:
              ({
                Value<int> id = const Value.absent(),
                Value<String> identificador = const Value.absent(),
                Value<int> relatorioId = const Value.absent(),
                Value<int> tipoEscopo = const Value.absent(),
                Value<String> valor = const Value.absent(),
                Value<DateTime> criadoEm = const Value.absent(),
                Value<DateTime> atualizadoEm = const Value.absent(),
              }) => EscopoCompanion(
                id: id,
                identificador: identificador,
                relatorioId: relatorioId,
                tipoEscopo: tipoEscopo,
                valor: valor,
                criadoEm: criadoEm,
                atualizadoEm: atualizadoEm,
              ),
          createCompanionCallback:
              ({
                Value<int> id = const Value.absent(),
                required String identificador,
                required int relatorioId,
                required int tipoEscopo,
                required String valor,
                required DateTime criadoEm,
                required DateTime atualizadoEm,
              }) => EscopoCompanion.insert(
                id: id,
                identificador: identificador,
                relatorioId: relatorioId,
                tipoEscopo: tipoEscopo,
                valor: valor,
                criadoEm: criadoEm,
                atualizadoEm: atualizadoEm,
              ),
          withReferenceMapper: (p0) => p0
              .map(
                (e) =>
                    (e.readTable(table), $$EscopoTableReferences(db, table, e)),
              )
              .toList(),
          prefetchHooksCallback: ({relatorioId = false}) {
            return PrefetchHooks(
              db: db,
              explicitlyWatchedTables: [],
              addJoins:
                  <
                    T extends TableManagerState<
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic
                    >
                  >(state) {
                    if (relatorioId) {
                      state =
                          state.withJoin(
                                currentTable: table,
                                currentColumn: table.relatorioId,
                                referencedTable: $$EscopoTableReferences
                                    ._relatorioIdTable(db),
                                referencedColumn: $$EscopoTableReferences
                                    ._relatorioIdTable(db)
                                    .id,
                              )
                              as T;
                    }

                    return state;
                  },
              getPrefetchedDataCallback: (items) async {
                return [];
              },
            );
          },
        ),
      );
}

typedef $$EscopoTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $EscopoTable,
      EscopoData,
      $$EscopoTableFilterComposer,
      $$EscopoTableOrderingComposer,
      $$EscopoTableAnnotationComposer,
      $$EscopoTableCreateCompanionBuilder,
      $$EscopoTableUpdateCompanionBuilder,
      (EscopoData, $$EscopoTableReferences),
      EscopoData,
      PrefetchHooks Function({bool relatorioId})
    >;

class $AppDatabaseManager {
  final _$AppDatabase _db;
  $AppDatabaseManager(this._db);
  $$ClienteTableTableManager get cliente =>
      $$ClienteTableTableManager(_db, _db.cliente);
  $$RelatorioTableTableManager get relatorio =>
      $$RelatorioTableTableManager(_db, _db.relatorio);
  $$SecaoTableTableManager get secao =>
      $$SecaoTableTableManager(_db, _db.secao);
  $$VulnerabilidadeTableTableManager get vulnerabilidade =>
      $$VulnerabilidadeTableTableManager(_db, _db.vulnerabilidade);
  $$EvidenciaTableTableManager get evidencia =>
      $$EvidenciaTableTableManager(_db, _db.evidencia);
  $$EscopoTableTableManager get escopo =>
      $$EscopoTableTableManager(_db, _db.escopo);
}
