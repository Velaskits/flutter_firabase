import 'dart:js';

import 'package:flutter/material.dart';
import 'package:flutter_firabase/auth/servei_auth.dart';
import 'package:flutter_firabase/chat/servei_chat.dart';

class PaginaInici extends StatelessWidget {
  PaginaInici({super.key});

  final ServeiAuth _serveiAuth = ServeiAuth();
  final ServeiChat _serveiChat = ServeiChat();
  
  void logout(){

    _serveiAuth.tancaSessio();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Pagina inici"),
        actions: [
          IconButton(
          onPressed: logout, 
          icon: const Icon(Icons.logout)
          ),
        ],
      ),
      body: _contrueixLlistaUsuaris(),
    );
  }
  Widget _contrueixLlistaUsuaris(){
    
    return StreamBuilder(
      stream: _serveiChat.getUsuaris(), 
      builder: (context, snapshot){
        
        // Mirar si hay error.
        if(snapshot.hasError){
          
          return const Text("Error");
        } 

        // Esperamos que se cargen los datos.
        if (snapshot.connectionState == ConnectionState.waiting){

          return const Text("Carregant dades.");
        }

        // Se devuelven los datos.
        return ListView(
          children: snapshot.data!.map<Widget>(
            (dadesUsuari) => _construeixItemUsuari(dadesUsuari, context),
          ).toList(),
        );
      }
    );
  }
  Widget _construeixItemUsuari(Map<String, dynamic> dadesUsuari, BuildContext context){

    if(dadesUsuari["email"] == _serveiAuth.getUsuariActual()!.email){
      return Container();
    }
    return  Text(dadesUsuari["email"]);
  }
}