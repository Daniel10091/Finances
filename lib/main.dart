import 'package:finances/modules/home/templates/home_screen_template.dart';
import 'package:flutter/material.dart';


void main() {
  runApp(const FinancasApp());
}

class FinancasApp extends StatelessWidget {
  const FinancasApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Projeto Finanças',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: HomeScreenTemplate(
        totalAvailable: 5000.00,
        expenses: 2000.00,
        savings: 3000.00,
        savingsDifferencePercent: 5.0,
        avatarImageUrl: 'https://media.istockphoto.com/id/1207856385/de/foto/fr%C3%B6hliche-fr%C3%B6hliche-afrikanische-amerikanische-junge-mann-in-brille-portr%C3%A4t.jpg?s=170667a&w=0&k=20&c=qHzcNRpY6NMpdJ7DOjmScCmmoiz7jVlP6bZDTJGCrGA=',
        onProfileTap: () {
          // Navegar para a tela de perfil
        },
      ),
    );
  }
}
