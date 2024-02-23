import 'package:flutter/material.dart';
import 'package:flutter_firabase/paginas/pagina_login.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: PaginaLogin(),
    );
  }
}

/*
1) Tener el Node.js instalado,
2) npm install -g firebase-tools
3) Fer login a Firebase: firebase login
*/
