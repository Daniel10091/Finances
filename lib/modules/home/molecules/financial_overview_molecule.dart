import 'package:flutter/material.dart';

class FinancialOverviewMolecule extends StatelessWidget {
  final double expenses;
  final double savings;
  final double savingsDifferencePercent;

  const FinancialOverviewMolecule({
    Key? key,
    required this.expenses,
    required this.savings,
    required this.savingsDifferencePercent,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final total = expenses + savings;
    final savingsPercentage = total > 0 ? savings / total : 0.0;

    return Row(
      children: [
        // Gráfico circular (não é um gráfico pizza, mas uma barra circular)
        SizedBox(
          width: 100,
          height: 100,
          child: Stack(
            alignment: Alignment.center,
            children: [
              CircularProgressIndicator(
                value: savingsPercentage,
                strokeWidth: 10,
                backgroundColor: Colors.redAccent.withOpacity(0.2),
                valueColor: AlwaysStoppedAnimation<Color>(Colors.green),
              ),
              Text('${(savingsPercentage * 100).toStringAsFixed(0)}%'),
            ],
          ),
        ),
        const SizedBox(width: 16),
        // Descrições ao lado do gráfico
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Despesas: R\$ ${expenses.toStringAsFixed(2)}'),
              const SizedBox(height: 4),
              Text('Economias: R\$ ${savings.toStringAsFixed(2)}'),
              const SizedBox(height: 4),
              Text('Diferença Mês Anterior: ${savingsDifferencePercent.toStringAsFixed(1)}%'),
            ],
          ),
        ),
      ],
    );
  }
}
