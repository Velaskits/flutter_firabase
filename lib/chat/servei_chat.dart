import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

class ServeiChat{

  final FirebaseFirestore _firestore = FirebaseFirestore.instance;
  final FirebaseAuth _auth = FirebaseAuth.instance;

  Stream<List<Map<String, dynamic>>> getUsuaris(){
    
    return _firestore.collection("Usuaris").snapshots().map((event) {
      
      return event.docs.map((document) {
        
        return document.data();
      }).toList();
    });
  }

  Future<void> enviarMissatge(String idReceptor, missatge) async{
      final String idUsuariActual = _auth.currentUser!.uid;
      final String? emailUsuariActual = _auth.currentUser!.email;
      final Timestamp timestamp = Timestamp.now();

      /*Missatge nouMissatge = Missatge(
          idAutor = idUsuariActual,
          emailAutor = emailUsuariActual,
          idReceptor = idReceptor,
          missatge = missatge,
          timestamp = timestamp
      );

      idsUsuaris.sort();
      Strieng idSalaChat = idUsuario.join("_");*/
  }

  /*Stream<QuerySnapshot> getMissatges(String idUsuariActual, idReceptor){
      List<String> idUsuaris = [idUsuariActual, idReceptor]
      idUsuaris.sort();
      String idSalaChat = idsUsuaris.join("_")

      return _firestore
        .collection("SalesChat")
        .doc(idSalaChat)
        .collection("Missatges")
        .orderBy("timestamp", descending: false).snapshots();
  }*/

  /* Crear Pagina Chat

    final ServeiAuth _serveiAuth = ServeiAuth();
  
    Widget _construirListaMissatges(){

      String idUsuariActual = _serveiAuth.getUsuariActual()!.uid;

      return StreamBuilder(
        stream: _serveiChat.getMissatges(idsusuariActual, widget.idReceptor),
        builder: (context, snapshot){

          -------------Caso de que de fallo----
          if(snapshot.haserror){
            return const Text("Error carregant missatges.");
          }
          -------------Cargando...-----------
          if(snapshot.connectionState == ConnectionState.waiting){
            return const Text("Carregant...");
          }

          Ya lo tenemos!
          return ListView(
            children: snapshot.data!.docs.map((document) => _construirItemMissatge(document)).toList(),
          );
        },
      );

    }

    Widget _construirItemMissatge(DocumentSnapshot documentSnapshot){
      
      //final data = document... (altra opcio).
      Map<String, dynamic> data = documentSnapshot.data() as Map<String, dynamic>

      //Saber si el mostrem a l'esquerra o a la dreta.

      //Si és usuari actual.
      bool esUsuariActual = data["idAutor"] == _serveiAuth.getUsuariActual()!.uid;

      //Operador ternari.
      var aliniament = esUsuariActual ? Alignment.centerRight : Alignment.centerLeft;
      var colorBombolla = esUsuariActual ? Colors.green[200] : Colors.amber[200];

      return Container(
        alignment: aliniament,
        child: BombollaMissatge(colorBombolla: 
        colorBombolla??Colors.black, 
        missatge: data("missatge"),
        )
      ); 
    }
  */
}