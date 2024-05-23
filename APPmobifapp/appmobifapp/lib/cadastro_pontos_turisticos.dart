import 'package:flutter/material.dart';

class CadastroPontosTuristicos extends StatelessWidget {
  final String title;

  const CadastroPontosTuristicos({Key? key, required this.title})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Center(
        child: ListView(
          padding: const EdgeInsets.all(16.0),
          children: <Widget>[
            Container(
              margin:
                  const EdgeInsets.only(top: 20), // Espaço superior da imagem
              child: ClipRRect(
                borderRadius: BorderRadius.circular(40),
                child: Image.asset(
                  'assets/images/mapa1.JPG',
                  width: 100, // Ajustado tamanho da imagem
                  height: 100,
                ),
              ),
            ),
            const SizedBox(height: 10),
            const Text(
              'MobIFAPP',
              style: TextStyle(
                fontSize: 20, // Ajustado tamanho da fonte
                fontWeight: FontWeight.bold, // Estilo da fonte negrito
                color: Colors.black,
              ),
              textAlign: TextAlign.center, // Alinhando o texto no centro
            ),
            const SizedBox(height: 10),
            const Divider(
              height: 2,
              color: Colors.black,
              thickness: 2, // Espessura da linha
              indent: 10,
              endIndent: 10,
            ),
            const SizedBox(height: 20),
            TextField(
              decoration: InputDecoration(
                labelText: 'Nome do ponto turístico',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 10),
            TextField(
              decoration: InputDecoration(
                labelText: 'País',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 10),
            TextField(
              decoration: InputDecoration(
                labelText: 'Cidade',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 10),
            TextField(
              decoration: InputDecoration(
                labelText: 'Principais informações turísticas',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 10),
            TextField(
              decoration: InputDecoration(
                labelText: 'Distância da capital',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 10),
            TextField(
              decoration: InputDecoration(
                labelText:
                    'Principais pontos de apoio (rodoviária, restaurantes, hotéis)',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 10),
            TextField(
              decoration: InputDecoration(
                labelText: 'Descrição do ponto turístico',
                border: OutlineInputBorder(),
              ),
              maxLines: 4, // Permitir várias linhas para a descrição
            ),
            const SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                // Ação para anexar fotos
              },
              child: const Text('Anexar fotos'),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Ação para enviar os dados
              },
              child: const Text('Enviar'),
            ),
          ],
        ),
      ),
    );
  }
}

void main() {
  runApp(const MaterialApp(
    home: CadastroPontosTuristicos(title: 'Cadastro de Pontos Turísticos'),
  ));
}
