import 'dart:async';

import 'package:flutter/material.dart';

class Carrucel extends StatefulWidget {
  const Carrucel({super.key});

  static const imagenes = [
    'https://placehold.co/1600x900.png?text=Servicio+1',
    'https://placehold.co/1600x900.png?text=Servicio+2',
    'https://placehold.co/1600x900.png?text=Servicio+3',
  ];

  @override
  State<Carrucel> createState() => _CarrucelState();
}

class _CarrucelState extends State<Carrucel> {
  final PageController controlador = PageController();
  Timer? temporizador;

  @override
  void initState() {
    super.initState();
    temporizador = Timer.periodic(const Duration(seconds: 4), (_) {
      if (controlador.hasClients) {
        controlador.nextPage(
          duration: const Duration(milliseconds: 400),
          curve: Curves.easeInOut,
        );
      }
    });
  }

  @override
  void dispose() {
    temporizador?.cancel();
    controlador.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 16 / 9,
      child: PageView.builder(
        controller: controlador,
        itemCount: null,
        itemBuilder: (context, index) => Image.network(
          Carrucel.imagenes[index % Carrucel.imagenes.length],
          fit: BoxFit.contain,
          errorBuilder: (context, error, stackTrace) =>
              const Center(child: Text('No se pudo cargar la imagen')),
        ),
      ),
    );
  }
}
