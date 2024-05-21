import 'package:flutter/material.dart';

void main() {
  runApp(const AcompanhamentoInscricao(title: 'Acompanhamento de Inscrição'));
}

class AcompanhamentoInscricao extends StatelessWidget {
  final String title;

  const AcompanhamentoInscricao({Key? key, required this.title})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextEditingController cpfController = TextEditingController();
    TextEditingController dataNascimentoController = TextEditingController();

    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              margin:
                  const EdgeInsets.only(top: 20), // Espaço superior da imagem
              child: ClipRRect(
                borderRadius: BorderRadius.circular(40),
                child: Image.asset(
                  'assets/images/aluno.JPG',
                  width: 50, //Tamanho da imagem
                  height: 50,
                ),
              ),
            ),
            const SizedBox(height: 5),
            const Text(
              'MobIFAPP',
              style: TextStyle(
                fontSize: 15, // Tamanho da Fonte
                fontWeight: FontWeight.bold, //Estilo da fonte negrito
                color: Colors.black,
              ),
              textAlign: TextAlign.center, // Aliando o texto no centro
            ),
            const SizedBox(height: 10),
            const Divider(
              height: 2,
              color: Colors.black,
              thickness: 4, // Espessura da linha
              indent: 10,
              endIndent: 10,
            ),
            Text(
              'Login com CPF e Data de Nascimento',
              style: TextStyle(
                fontSize: 20, // Tamanho da Fonte
                fontWeight: FontWeight.bold, // Estilo da fonte negrito
                color: Colors.black,
              ),
              textAlign: TextAlign.center, // Alinhando o texto no centro
            ),
            const SizedBox(
                height: 20.0), // Espaçamento entre o texto e os campos
            // Adicionando campos de entrada para CPF e data de nascimento
            TextField(
              controller: cpfController,
              decoration: const InputDecoration(
                hintText: 'CPF',
              ),
            ),
            const SizedBox(height: 10.0), // Espaçamento entre os campos
            TextField(
              controller: dataNascimentoController,
              decoration: const InputDecoration(
                hintText: 'Data de Nascimento (DD/MM/AAAA)',
              ),
            ),
            const SizedBox(height: 20.0), // Espaçamento entre os campos e botão
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  child: const Text('Voltar'),
                ),
                ElevatedButton(
                  onPressed: () {
                    // Lógica de validação do login com CPF e data de nascimento
                    String cpfInformado = cpfController.text;
                    String dataNascimentoInformada =
                        dataNascimentoController.text;

                    // Aqui você pode adicionar a lógica de validação do login
                    // Por enquanto, vamos apenas verificar se os campos estão preenchidos
                    if (cpfInformado.isNotEmpty &&
                        dataNascimentoInformada.isNotEmpty) {
                      // Se os campos estiverem preenchidos, faça algo, como navegar para a próxima tela ou realizar uma operação
                      showDialog(
                        context: context,
                        builder: (BuildContext context) {
                          return AlertDialog(
                            title: const Text('Login bem-sucedido'),
                            content: const Text('Bem-vindo!'),
                            actions: <Widget>[
                              TextButton(
                                onPressed: () {
                                  // Fecha o diálogo
                                  Navigator.of(context).pop();
                                },
                                child: const Text('OK'),
                              ),
                            ],
                          );
                        },
                      );
                    } else {
                      // Se algum dos campos estiver vazio, exiba uma mensagem de erro
                      showDialog(
                        context: context,
                        builder: (BuildContext context) {
                          return AlertDialog(
                            title: const Text('Erro de login'),
                            content: const Text(
                                'Por favor, preencha todos os campos.'),
                            actions: <Widget>[
                              TextButton(
                                onPressed: () {
                                  // Fecha o diálogo
                                  Navigator.of(context).pop();
                                },
                                child: const Text('OK'),
                              ),
                            ],
                          );
                        },
                      );
                    }
                  },
                  child: const Text('salvar'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
