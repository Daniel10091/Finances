import 'package:flutter/material.dart';
import '../atoms/profile_avatar_atom.dart';
import '../molecules/total_value_molecule.dart';
import '../molecules/financial_overview_molecule.dart';

class HomeScreenTemplate extends StatelessWidget {
  final double totalAvailable;
  final double expenses;
  final double savings;
  final double savingsDifferencePercent;
  final String avatarImageUrl;
  final VoidCallback onProfileTap;

  const HomeScreenTemplate({
    Key? key,
    required this.totalAvailable,
    required this.expenses,
    required this.savings,
    required this.savingsDifferencePercent,
    required this.avatarImageUrl,
    required this.onProfileTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // AppBar com o título e o botão do avatar para acessar o perfil
      appBar: AppBar(
        title: const Text('Projeto Finanças'),
        actions: [
          ProfileAvatarAtom(
            imageUrl: avatarImageUrl,
            onTap: onProfileTap,
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Exibe o total disponível
            TotalValueMolecule(total: totalAvailable),
            const SizedBox(height: 24),
            // Exibe o gráfico circular e as descrições (despesas, economias e % da diferença)
            FinancialOverviewMolecule(
              expenses: expenses,
              savings: savings,
              savingsDifferencePercent: savingsDifferencePercent,
            ),
          ],
        ),
      ),
    );
  }
}
