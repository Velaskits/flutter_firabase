/*
final ScrollController controllerScroll = ScrollControler
final FocusNode focusNode = FocusNode();

void ferScrollCapAvall(){
  
  controllerScroll.animateTo(
    controllerScroll.position.maxScrollExtent, 
    duration: const Duration(seconds: 1), 
    curve: Curves.fastOutSlowIn
  );
}

@override
void initState(){
    super.initState();

    // Ens 
    Feture.delayed(
      const Duration(milliseconds: 500),
      () => ferScrollCapAvall(),
    )
}

Hay que acordarse de poner el async o el await para que el Scroll funcione
*/