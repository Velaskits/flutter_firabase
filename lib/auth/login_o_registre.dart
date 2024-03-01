import 'package:flutter/material.dart';
import 'package:flutter_firabase/paginas/pagina_login.dart';
import 'package:flutter_firabase/paginas/pagina_registre.dart';

class LoginORegistre extends StatefulWidget {
  const LoginORegistre({super.key});

  @override
  State<LoginORegistre> createState() => _LoginORegistreState();
}

class _LoginORegistreState extends State<LoginORegistre> {

  bool mostraPaginaLogin = true;

  void intercambiaPagineesLoginRegistre(){
    setState(() {
      mostraPaginaLogin = !mostraPaginaLogin;  
    });
    
  }

  @override
  Widget build(BuildContext context) {

    if (mostraPaginaLogin) {
      return PaginaLogin(alFerClic: intercambiaPagineesLoginRegistre,);
    } else {
      return PaginaRegistre(alFerClic: intercambiaPagineesLoginRegistre,);
    }
  }
}
