import 'package:flutter/material.dart';

class InscricaoScreen extends StatelessWidget {
  final String cpf;
  final String dataNascimento;

  const InscricaoScreen({Key? key, required this.cpf, required this.dataNascimento}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Inscrição Completa'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: <Widget>[
            const SizedBox(height: 20),
            TextField(
              decoration: const InputDecoration(labelText: 'Endereço'),
            ),
            const SizedBox(height: 16.0),
            TextField(
              decoration: const InputDecoration(labelText: 'Cidade'),
            ),
            const SizedBox(height: 16.0),
            TextField(
              decoration: const InputDecoration(labelText: 'País'),
            ),
            const SizedBox(height: 16.0),
            TextField(
              decoration: const InputDecoration(labelText: 'CEP'),
            ),
            const SizedBox(height: 16.0),
            TextField(
              decoration: const InputDecoration(labelText: 'CPF'),
              controller: TextEditingController(text: cpf),
            ),
            const SizedBox(height: 16.0),
            TextField(
              decoration: const InputDecoration(labelText: 'RG'),
            ),
            const SizedBox(height: 16.0),
            TextField(
              decoration: const InputDecoration(labelText: 'Data de Nascimento (DD/MM/AAAA)'),
              controller: TextEditingController(text: dataNascimento),
            ),
            const SizedBox(height: 32.0),
            ElevatedButton(
              onPressed: () {
                // Lógica para salvar o cadastro completo
                Logger.d('Cadastro completo salvo');
                Navigator.pop(context);
              },
              child: const Text('Salvar Cadastro'),
            ),
          ],
        ),
      ),
    );
  }
}

// Classe Logger para registrar as informações.
class Logger {
  static void d(String s) {
    // Implementação do log aqui.
    print(s);
  }
}
