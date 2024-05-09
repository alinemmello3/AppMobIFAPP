import 'package:flutter/material.dart';

class CadastroParticipantes extends StatelessWidget {
  final String title;

  const CadastroParticipantes({Key? key, required this.title})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Center(
        child: ListView(
          children: <Widget>[
            Container(
              margin:
                  const EdgeInsets.only(top: 20), // Espaço supeior da imagem
              child: ClipRRect(
                borderRadius: BorderRadius.circular(40),
                child: Image.asset(
                  'assets/images/login1.JPG',
                  width: 50, // Tamanho da imagem
                  height: 50,
                ),
              ),
            ),
            const SizedBox(height: 5),
            const Text(
              'MobIFAPP',
              style: TextStyle(
                fontSize: 15, // Tamanho da Fonte
                fontWeight: FontWeight.bold, // Estilo da fonte negrito
                color: Colors.black,
              ),
              textAlign: TextAlign.center, // Alinhando o texto no centro
            ),
            const SizedBox(height: 10),
            const Divider(
              height: 2,
              color: Colors.black,
              thickness: 4, // Espessura da linha
              indent: 10,
              endIndent: 10,
            ),
          ],
        ),
      ),
    );
  }
}

//Ações referente a página

// TelaCadastro é um StatefulWidget responsável pela tela de cadastro.
class TelaCadastro extends StatefulWidget {
  const TelaCadastro({Key? key}) : super(key: key);

  @override
  _TelaCadastroState createState() => _TelaCadastroState();
}

// _TelaCadastroState é a classe que mantém o estado da tela de cadastro.
class _TelaCadastroState extends State<TelaCadastro> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Cadastro'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            // Campo de entrada para o email.
            TextField(
              controller: _emailController,
              decoration: const InputDecoration(
                labelText: 'Email',
              ),
            ),
            const SizedBox(height: 16.0),
            // Campo de entrada para a senha.
            TextField(
              controller: _passwordController,
              obscureText: true, // Mascara o texto digitado
              decoration: const InputDecoration(
                labelText: 'Senha',
              ),
            ),
            const SizedBox(height: 32.0),
            // Botão para submeter o formulário de cadastro.
            ElevatedButton(
              onPressed: () {
                // Obtém o email e a senha digitados
                String email = _emailController.text;
                String password = _passwordController.text;
                // Registra o novo email e senha utilizando o logger.
                Logger.d('Novo Email: $email');
                Logger.d('Nova Senha: $password');
              },
              child: const Text('Cadastrar'),
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
