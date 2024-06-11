import 'package:flutter/material.dart';

class AlunoTemporario extends StatelessWidget {
  final String title;

  const AlunoTemporario({Key? key, required this.title}) : super(key: key);

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
                  const EdgeInsets.only(top: 20), // Espaço superior da imagem
              child: ClipRRect(
                borderRadius: BorderRadius.circular(40),
                child: Image.asset(
                  'assets/images/alunos.JPG',
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
            // Informações das instituições conveniadas
            _buildAlunoTemporario(context: context),
          ],
        ),
      ),
    );
  }

  Widget _buildAlunoTemporario({required BuildContext context}) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const <Widget>[
          Text(
            'Estudante estrangeiro',
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 10),
          Text(
            '1. Mobilidade\n'
            'Os estudantes de Universidades conveniadas* com a Faculdade de Educação da Universidade de São Paulo (FEUSP) poderão participar do programa de mobilidade da área de Educação.\n\n'
            'Para graduação temos os cursos de Pedagogia e de Licenciatura (formação de professores de conteúdos específicos como Português, Francês, História, Geografia, etc).\n\n'
            'Para pós-graduação temos Mestrado e Doutorado em Educação.\n\n'
            '*Para estágios de alunos de pós-graduação não é necessário estabelecer um convênio acadêmico internacional. Para alunos de graduação é possível fazer intercâmbio sem convênio, mas poderemos iniciar o processo de um convênio quando os alunos forem indicados.',
            style: TextStyle(fontSize: 14),
          ),
          SizedBox(height: 10),
          Text(
            '1.2 Mobilidade de estudantes de graduação\n\n'
            'A indicação de seus estudantes deverá ser efetuada pelo Escritório Internacional da Universidade de origem até 15 de junho para o 2º semestre (agosto a dezembro) e até 30 de novembro para 1º semestre (fevereiro a junho).\n\n'
            'Para a indicação precisaríamos primeiramente do formulário abaixo preenchido:\n'
            'Formulário para estudantes estrangeiros de graduação preenchido;\n\n'
            'Assim que o estudante for indicado, ele receberá um e-mail de confirmação e deverá completar a sua inscrição online anexando os seguintes documentos:\n\n'
            '• Formulário preenchido e assinado;\n'
            '• Certificado simples de proficiência em português (da instituição de origem ou escola de idiomas) nível básico (A1/A2) – certificado não exigido aos estudantes oriundos de países lusófonos e hispanófonos;\n'
            '• Carta de recomendação escrita por um professor da universidade de origem;\n'
            '• Uma foto (tamanho cm 3×4);\n'
            '• Histórico escolar da instituição de origem (assinado e carimbado pela instituição de origem);\n'
            '• Copia do Passaporte.\n'
            '• Se aprovado, apresentar a cópia do visto de estudante temporário IV.',
            style: TextStyle(fontSize: 14),
          ),
          SizedBox(height: 10),
          Text(
            '1.2 Disciplinas\n\n'
            '• Licenciatura em Pedagogia\n'
            '• Demais Licenciaturas',
            style: TextStyle(fontSize: 14),
          ),
          SizedBox(height: 10),
          Text(
            '1.3 Mobilidade de estudantes de pós-graduação\n\n'
            'Para o processo de mobilidade de Pós-Graduação, serão necessários os seguintes documentos:\n\n'
            '• Carta da sua universidade de origem comprovando o seu vínculo como aluno de Pós-Graduação;\n'
            '• Cópia do passaporte;\n'
            '• Formulário de candidatura preenchido;\n'
            '• Se aprovado, apresentar a cópia do visto de estudante temporário IV.\n\n'
            'Disciplinas\n\n'
            '• Linhas de pesquisa\n'
            '• Página da Pós-graduação\n\n'
            'O prazo de inscrição é de fevereiro a junho, para o segundo semestre do ano em curso e de agosto a dezembro para o primeiro semestre do ano seguinte.\n\n'
            'Para estágios acima de 3 meses, o aluno estrangeiro de Pós-Graduação será registrado como aluno de mobilidade de Pós-Graduação.',
            style: TextStyle(fontSize: 14),
          ),
          SizedBox(height: 10),
          Text(
            '1.4 Outros programas de modalidade\n\n'
            '• PEC-G – Programa desenvolvido pelo Ministério das Relações Exteriores em conjunto com o Ministério da Educação com o objetivo de oferecer oportunidade de formação superior a cidadãos de países com os quais o Brasil mantém acordos educacionais e culturais (especialmente da África, América Latina e Caribe).\n'
            '• PEC-PG – Programa de cooperação com países da África, Ásia, Oceania, América Latina, Oriente Médio e Caribe. Esse programa visa o aumento de qualificação de professores universitários, pesquisadores e profissionais.',
            style: TextStyle(fontSize: 14),
          ),
          SizedBox(height: 10),
          Text(
            '2. Língua Portuguesa\n\n'
            'Geralmente a FEUSP oferece curso gratuito de português para estudantes de intercâmbio.\n\n'
            'FEUSP também oferece gratuitamente assessoria linguística para aprendizagem de português (Centro de Estudos e Pesquisas em Ensino de Línguas – CEPEL). Local Sala 11 – Bloco B – FEUSP. Mediante agendamento prévio via e-mail: inco@fe.usp.br.',
            style: TextStyle(fontSize: 14),
          ),
          SizedBox(height: 10),
          Text(
            '3. Interação em língua estrangeira\n\n'
            'Temos professores que falam outros idiomas que poderão auxiliá-los em pequenos resumos, responder perguntas e indicar alguma bibliografia nos idiomas que dominam:\n'
            '• https://www4.fe.usp.br/internacional/institucional/interacao-em-lingua-estrangeiras-nas-aulas-da-fe',
            style: TextStyle(fontSize: 14),
          ),
          SizedBox(height: 10),
          Text(
            '4. Acomodação\n\n'
            'A Universidade de São Paulo não dispõe de alojamentos para estudantes estrangeiros. Em nosso guia para estudante estrangeiro (logo abaixo item 7) há também indicações de moradia.',
            style: TextStyle(fontSize: 14),
          ),
          SizedBox(height: 10),
          Text(
            '5. USP Ifriends\n\n'
            'É um programa em que estudantes voluntários da USP (podendo ser estudante de qualquer curso) poderá ajudar estudantes intercambistas com as seguintes atividades:\n\n'
            '• Auxílio na busca por moradia;\n'
            '• Recepção no aeroporto;\n'
            '• Auxílio na regularização de documentos;\n'
            '• Orientações acadêmicas;\n'
            '• Auxílio com a língua portuguesa.\n\n'
            'O estudante estrangeiro poderá se inscrever para o programa, assim que for indicado pela universidade de origem.',
            style: TextStyle(fontSize: 14),
          ),
          SizedBox(height: 10),
          Text(
            '6. Temos também a Tutoria / FEUSP Friend\n\n'
            'Com os mesmos auxílios do item 5, porém com estudantes voluntários da Faculdade de Educação.',
            style: TextStyle(fontSize: 14),
          ),
          SizedBox(height: 10),
          Text(
            '7. Alimentação\n\n'
            'A Universidade de São Paulo dispõe de restaurantes universitários. O valor de cada refeição é:\n\n'
            '• Café da manhã: R\$:0,50\n'
            '• Almoço: R\$:2,00\n'
            '• Jantar: R\$:2,00',
            style: TextStyle(fontSize: 14),
          ),
          SizedBox(height: 10),
          Text(
            '8. Guia para estudantes estrangeiros',
            style: TextStyle(fontSize: 14),
          ),
          SizedBox(height: 10),
          Text(
            '9. Estudantes estrangeiros na FEUSP (graduação)',
            style: TextStyle(fontSize: 14),
          ),
          SizedBox(height: 10),
          Text(
            '10. Depoimento de estudantes estrangeiros na FEUSP',
            style: TextStyle(fontSize: 14),
          ),
          SizedBox(height: 10),
          Text(
            '11. Factsheet',
            style: TextStyle(fontSize: 14),
          ),
        ],
      ),
    );
  }
}
