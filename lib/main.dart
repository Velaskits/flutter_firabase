import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_firabase/auth/login_o_registre.dart';
import 'package:flutter_firabase/firebase_options.dart';
import 'package:flutter_firabase/paginas/pagina_login.dart';
import 'package:flutter_firabase/paginas/pagina_registre.dart';

void main() async {

  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginORegistre(),
    );
  }
}

/*
1) Tener el Node.js instalado,
2) npm install -g firebase-tools
3) Fer login a Firebase: firebase login
    - Si da error del archivo firabase.ps1, camviarle el nombre (o borrarlo.
    y volver a hacer login).
    - Si volvemos a hacer firabase login nos dice en que cuenta estamos.
    - Si quisieramos cambiar de cuenta hacemos firabase logout.

4) Hacer: dart pub global activate flutterfire_cli
5) Vincular proyecto local con el proyecto Firebase de la consola.
  - flutterfire configure

6) Incluir las librerias de Firebase que queramos utilizar.
  - flutter pub add firebas_auth
  - flutter pub add firebase_core

*/

/*
Imatge:
=======

1) Habilitar Firebase Storage en el proyecte vinculat de Firebase.
 - Es pot posar les reglas a true el write i read.

2) Descarreguem dependencia de Firebase Storage al projecte.
 - flutter pub add firebase_storage

3) Descarregiuem una dependencia per seleccionar imatges (un picker).
 - N'hi ha diversos.
 - Fem sevir el image_picker
 - flutter pub add image_picker

4) Perque funcioni en Android:
 - Anar a android > app > src > main > AndroidManifest.xml
  - Escriure just abans del tag <aplication> (fora d'aplication):
    <uses-permission android:name="android.permision.READ_EXTERNALSTORAGE"/>
    <uses-permission android:name="android.permision.READ_MEDIA_IMAGES"/>
    <uses-permission android:name="android.permision.READ_MEDIA_VIDEO"/>
*/
