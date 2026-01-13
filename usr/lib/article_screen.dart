import 'package:flutter/material.dart';

class ArticleScreen extends StatelessWidget {
  const ArticleScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Educação Inovadora'),
        backgroundColor: Theme.of(context).colorScheme.primaryContainer,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Header Image Placeholder
            Container(
              height: 200,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.blue.shade100,
                borderRadius: BorderRadius.circular(12),
              ),
              child: Icon(
                Icons.school_rounded,
                size: 80,
                color: Colors.blue.shade800,
              ),
            ),
            const SizedBox(height: 24),
            
            // Title
            Text(
              'Metodologias Ativas e o Sucesso do Plickers em Sala de Aula',
              style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                fontWeight: FontWeight.bold,
                color: Colors.black87,
              ),
            ),
            const SizedBox(height: 16),
            
            // Introduction
            _buildSectionTitle(context, 'Introdução às Metodologias Ativas'),
            _buildParagraph(
              'As metodologias ativas representam uma virada fundamental no processo de ensino-aprendizagem, '
              'colocando o estudante no centro da construção do conhecimento. Ao contrário do modelo tradicional, '
              'onde o aluno é um receptor passivo, nessas abordagens ele se torna protagonista, engajando-se em '
              'resolução de problemas, debates e atividades práticas.'
            ),
            
            // What is Plickers
            _buildSectionTitle(context, 'A Ferramenta Plickers'),
            _buildParagraph(
              'Nesse contexto, a tecnologia atua como uma grande aliada. O Plickers surge como uma ferramenta '
              'acessível e poderosa. Diferente de outras soluções que exigem um dispositivo por aluno (como tablets ou celulares), '
              'o Plickers requer apenas o celular do professor e cartões impressos com códigos QR para os alunos.'
            ),
            _buildParagraph(
              'Cada lado do cartão representa uma alternativa (A, B, C ou D). Ao levantar o cartão, o professor '
              'escaneia a sala com a câmera do app, coletando as respostas instantaneamente.'
            ),

            // Success Case
            _buildSectionTitle(context, 'Aplicação com Sucesso em Sala'),
            _buildParagraph(
              'A utilização do Plickers em sala de aula demonstrou resultados expressivos. A dinâmica de "gamificação" '
              'gerada pela ferramenta aumentou significativamente o engajamento dos estudantes. A ansiedade de ver '
              'sua resposta computada em tempo real no quadro projetado criou um ambiente de competição saudável e colaborativa.'
            ),
            _buildParagraph(
              'Para o docente, o benefício foi o feedback imediato. Foi possível identificar, na hora, quais conceitos '
              'a turma não compreendeu bem e ajustar a explicação antes de prosseguir, personalizando o ensino de forma ágil.'
            ),

            // Conclusion
            _buildSectionTitle(context, 'Conclusão'),
            _buildParagraph(
              'A integração do Plickers como suporte às metodologias ativas provou ser uma estratégia eficaz. '
              'Ela democratiza o acesso à tecnologia educacional (baixo custo) e transforma a avaliação formativa '
              'em um momento lúdico e participativo, consolidando o aprendizado de forma significativa.'
            ),
            
            const SizedBox(height: 32),
            Center(
              child: ElevatedButton.icon(
                onPressed: () {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text('Simulação de compartilhamento do artigo!')),
                  );
                },
                icon: const Icon(Icons.share),
                label: const Text('Compartilhar Texto'),
              ),
            ),
            const SizedBox(height: 32),
          ],
        ),
      ),
    );
  }

  Widget _buildSectionTitle(BuildContext context, String title) {
    return Padding(
      padding: const EdgeInsets.only(top: 24.0, bottom: 8.0),
      child: Text(
        title,
        style: Theme.of(context).textTheme.titleLarge?.copyWith(
          color: Theme.of(context).colorScheme.primary,
          fontWeight: FontWeight.w600,
        ),
      ),
    );
  }

  Widget _buildParagraph(String text) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 12.0),
      child: Text(
        text,
        style: const TextStyle(
          fontSize: 16,
          height: 1.5,
          color: Colors.black87,
        ),
        textAlign: TextAlign.justify,
      ),
    );
  }
}
