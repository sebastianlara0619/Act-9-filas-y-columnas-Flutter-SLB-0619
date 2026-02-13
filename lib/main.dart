import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: TelefonosFilasColumnas(),
    );
  }
}

class TelefonosFilasColumnas extends StatelessWidget {
  const TelefonosFilasColumnas({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Venta Teléfonos Lara Baca',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        backgroundColor: const Color(0xFF2E3192), // A deep blue from the new palette
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Primera fila
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                _buildSquareButton(
                  context,
                  icon: Icons.new_releases,
                  text: 'Novedades',
                  gradient: const LinearGradient(
                    colors: [Color(0xFF4A00E0), Color(0xFF8E2DE2)],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                  ),
                ),
                _buildSquareButton(
                  context,
                  icon: Icons.phone_iphone,
                  text: 'Teléfonos',
                  gradient: const LinearGradient(
                    colors: [Color(0xFF0052D4), Color(0xFF4364F7)],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                  ),
                ),
              ],
            ),
            // Segunda fila
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                _buildSquareButton(
                  context,
                  icon: Icons.favorite_border,
                  text: 'Deseados',
                  gradient: const LinearGradient(
                    colors: [Color(0xFFC84E89), Color(0xFFF15F79)],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                  ),
                ),
                _buildSquareButton(
                  context,
                  icon: Icons.local_shipping,
                  text: 'Envío',
                  gradient: const LinearGradient(
                    colors: [Color(0xFFF7797D), Color(0xFFFBD786)],
                     begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                  ),
                   textColor: Colors.black,
                ),
              ],
            ),
            // Tercera fila
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                _buildSquareButton(
                  context,
                  icon: Icons.email,
                  text: 'Contáctanos',
                  gradient: const LinearGradient(
                    colors: [Color(0xFF1CB5E0), Color(0xFF000046)],
                     begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                  ),
                ),
                _buildSquareButton(
                  context,
                  icon: Icons.report_problem,
                  text: 'Quejas',
                  gradient: const LinearGradient(
                    colors: [Color(0xFFED213A), Color(0xFF93291E)],
                     begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildSquareButton(BuildContext context, {required IconData icon, required String text, required Gradient gradient, Color textColor = Colors.white}) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Container(
        width: 120,
        height: 120,
        decoration: BoxDecoration(
          gradient: gradient,
          borderRadius: BorderRadius.circular(15.0),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.2),
              spreadRadius: 2,
              blurRadius: 10,
              offset: const Offset(0, 5),
            ),
          ],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(icon, size: 40.0, color: textColor),
            const SizedBox(height: 8.0),
            Text(
              text,
              textAlign: TextAlign.center,
              style: TextStyle(
                color: textColor,
                fontWeight: FontWeight.bold,
                fontSize: 14,
              ),
            ),
          ],
        ),
      ),
    );
  }
} //Fin Clase TelefonosFilasColumnas

