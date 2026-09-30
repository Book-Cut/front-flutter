import 'package:flutter/material.dart';

class HeaderNav extends StatelessWidget {
  const HeaderNav({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: const Color(0xFF212529),
      elevation: 0,
      toolbarHeight: 80,
      titleSpacing: 20,

      title: Row(
        children: [
          Image.asset('assets/output-onlinepngtools.png', height: 50),
          const SizedBox(width: 10),
          _botonNav('Servicios'),
          const SizedBox(width: 10),
          _botonNav('Locales'),
        ],
      ),
      actions: [
        _botonNav('Iniciar Sesión'),
        const SizedBox(width: 10),
        _botonNav('Registrarse'),
        const SizedBox(width: 20),
      ],
    );
  }

  Widget _botonNav(String texto) {
    return OutlinedButton(
      style: OutlinedButton.styleFrom(
        foregroundColor: Colors.white,
        side: const BorderSide(color: Colors.white, width: 1),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(5),
        ), // Bordes ligeramente redondeados
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
      ),
      onPressed: () {},
      child: Text(texto, style: const TextStyle(fontSize: 14)),
    );
  }
}
