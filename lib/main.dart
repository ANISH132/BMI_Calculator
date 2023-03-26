import 'package:flutter/material.dart';
import 'package:bmi_calc/screens/input_page.dart';
void main() => runApp(BMICalculator());

class BMICalculator extends StatelessWidget {
  const BMICalculator({super.key});

  @override
  Widget build(BuildContext context) {
    // final ThemeData theme = ThemeData();
    return MaterialApp(
      // theme: ThemeData.dark(),
      theme: ThemeData.dark().copyWith(

        colorScheme: ColorScheme.fromSwatch().copyWith(
            primary: const Color(0xFF0A0E21),
            secondary: Colors.purple),
        scaffoldBackgroundColor: const Color(0xFF0A0E21),
        textTheme: const TextTheme(
            bodyMedium: TextStyle(color: Colors.white)

        )
      ),
          home: const InputPage(),

    );
  }
}
