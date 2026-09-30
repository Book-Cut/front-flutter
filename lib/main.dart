import 'package:flutter/material.dart';
import 'screens/pantalla_inicio.dart';

void main() {
  runApp(const BookCutApp());
}

class BookCutApp extends StatelessWidget {
  const BookCutApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Book&Cut',
      home: PantallaInicio(),
    );
  }
}