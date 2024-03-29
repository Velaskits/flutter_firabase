import 'package:flutter/material.dart';
import 'package:flutter_firabase/auth/login_o_registre.dart';
import 'package:flutter_firabase/components/boto_auth.dart';
import 'package:flutter_firabase/components/textfield_auth.dart';

class PaginaLogin extends StatefulWidget {

  final void Function() alFerClic;

  const PaginaLogin({
    super.key, 
    required this.alFerClic
  });

  @override
  State<PaginaLogin> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<PaginaLogin> {
  final TextEditingController controllerEmail = TextEditingController();
  final TextEditingController controllerPassword = TextEditingController();

  void ferLogin(){
    
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 250, 183, 159),
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // Logo.
                  const Icon(
                    Icons.fireplace,
                    size: 120,
                    color: Color.fromARGB(255, 255, 240, 218),
                  ),
            
                  const SizedBox(
                    height: 25,
                  ),
            
                  // Frase.
                  const Text(
                    "Benvinbingut/a de nou.",
                    style: TextStyle(
                      color: Color.fromARGB(255, 255, 240, 218),
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
            
                  const SizedBox(
                    height: 25,
                  ),
            
                  // Text divisori.
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 25),
                    child: Row(
                      children: [
                        Expanded(
                          child: Divider(
                            thickness: 1,
                            color: Color.fromARGB(255, 255, 240, 218),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(
                            horizontal: 4,
                          ),
                          child: Text(
                            "Fes login",
                            style: TextStyle(
                              color: Color.fromARGB(255, 255, 240, 218),
                            ),
                          ),
                        ),
                        Expanded(
                          child: Divider(
                            thickness: 1,
                            color: Color.fromARGB(255, 255, 240, 218),
                          ),
                        ),
                      ],
                    ),
                  ),
            
                  const SizedBox(
                    height: 10,
                  ),
            
                  // TextField Email.
                  TextFieldAuth(
                    controller: controllerEmail,
                    obscureText: false,
                    hintText: "Email",
                  ),
            
                  const SizedBox(
                    height: 10,
                  ),
            
                  // TextField Password.
                  TextFieldAuth(
                    controller: controllerPassword,
                    obscureText: true,
                    hintText: "Password",
                  ),
            
                  const SizedBox(
                    height: 10,
                  ),
            
                  // No estas registrat/da?
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 25,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        const Text("No ets membre?"),
                        const SizedBox(
                          width: 5,
                        ),
                        GestureDetector(
                          onTap: widget.alFerClic,
                          child: const Text(
                            "Registra't",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, 
                                color: Colors.blue),
                          ),
                        ),
                      ],
                    ),
                  ),
            
                  const SizedBox(height: 10,),
            
                  // Botó login.
                  BotoAuth(
                    text: "Login",
                    onTap: ferLogin,
                  ),
            
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
