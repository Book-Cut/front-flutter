import 'package:flutter/material.dart';

import '../widgets/carrucel.dart';
import '../widgets/header_nav.dart';

class PantallaInicio extends StatelessWidget {
  const PantallaInicio({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFE7E7E7),
      body: Column(
        children: [
          const HeaderNav(),
          Expanded(
            child: ListView(
              padding: const EdgeInsets.all(24),
              children: [
                const Text(
                  'BIENVENIDO A BOOK&CUT',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 24),
                ),
                const SizedBox(height: 30),
                Center(
                  child: ConstrainedBox(
                    constraints: const BoxConstraints(maxWidth: 960),
                    child: const Carrucel(),
                  ),
                ),
                const SizedBox(height: 12),
                const Icon(Icons.keyboard_arrow_down_rounded, size: 48),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
