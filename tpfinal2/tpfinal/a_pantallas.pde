class Pantallas {
  String estado;
  int cant = 21, cant2 = 19;
  PImage imagenes [] =new PImage [19];
  Texto texto;
  Pantallas() {
    estado = "inicio";
    for ( int i = 0; i < cant2; i++ ) {
      imagenes[i] = loadImage ("imagen" + i + ".png");
    }    
    texto = new Texto();
  }
  void dibujar() {
    //----------- PANTALLAS --------------------------------------------
    if (estado == "inicio") {
      image(imagenes[0], 0, 0);
      texto.btn(1, 420, 180, 1);//Boton 1 = INICIAR --> presentacion
      texto.btn(2, 610, 180, 2);//Boton 2 = CREDITOS --> creditos
      println(texto.ID2());
    } else if (estado == "presentacion") {
      image(imagenes[1], 0, 0);
      texto.textosd(0, 35, 290);
      texto.btn( 29, 610, 180, 3); // Boton 3 = SIGUIENTE --> aventuras
    } else if (estado == "aventuras") {
      image(imagenes[2], 0, 0);
      //clic sobre las imagenes
      texto.textoDecision(6, 340, 80);
    } else if (estado == "hechicero1") {  //hechicero atrapado 1/2
      image(imagenes[3], 0, 0);
      texto.btn(29, 610, 180, 4);//Boton 4 = SIGUIENTE --> hechicero2
      texto.textosd(7, 35, 290);
    } else if (estado == "hechicero2") {  //hechicero atrapado 2/2
      image(imagenes[4], 0, 0);
      texto.textosd(8, 35, 290);
      texto.btn(29, 610, 180, 5);//Boton 5  = SIGUIENTE --> armario
    } else if (estado == "armario") {  
      image(imagenes[5], 0, 0);
      texto.textosd(9, 35, 290);
      texto.btn(29, 610, 180, 6);//Boton 6  = SIGUIENTE -->pociones
    } else if (estado == "pociones") {  
      image(imagenes[6], 0, 0);
      texto.textoDecision(10, 340, 80);
      texto.btn(27, 420, 180, 7 ); //Boton 7 = VERDE --> posionverde1
      texto.btn(28, 610, 180, 8 ); //Boton 8 = AZUL --> posionazul
    } else if (estado == "pocionverde1") {  //1/2 
      image(imagenes[8], 0, 0);
      texto.btn(29, 610, 180, 9);//Boton  9 = SIGUIENTE -->posionverde
      texto.textosd(11, 35, 290);
    } else if (estado == "pocionverde2") { //2/2 fin
      image(imagenes[9], 0, 0);
      texto.textosd(12, 35, 290);
      texto.btn(29, 610, 180, 10);//Boton 10  = SIGUIENTE -->creditos
    } else if (estado == "pocionazul") {
      image(imagenes[7], 0, 0); 
      texto.textosd(13, 35, 290);
      texto.btn(29, 610, 180, 11);//Boton 11  = SIGUIENTE -->creditos
    } else if (estado == "ladrones") {
      image(imagenes[10], 0, 0);
      texto.textosd(14, 35, 290);
      texto.btn(29, 610, 180, 12);//Boton 12  = SIGUIENTE --> lucha
    } else if (estado == "lucha") {
      image(imagenes[11], 0, 0);
      texto.textosd(15, 35, 290);
      texto.btn(29, 610, 180, 13);//Boton 13  = SIGUIENTE --> iniciojuego
    } else if (estado == "iniciojuego") {   //pantalla inicial juego
    } else if (estado == "oro") { 
      texto.textoDecision(26, 340, 80);
      texto.btn(23, 420, 180, 14 );//Boton 14 = SI --> joven
      texto.btn(25, 610, 180, 15 );//Boton 15 = NO --> quedarseoro
    } else if (estado == "quedarseoro") { 
      image(imagenes[15], 0, 0);
      texto.btn(29, 610, 180, 16);//Boton 16  = SIGUIENTE --> creditos
      texto.textosd(16, 35, 290);
    } else if (estado == "joven") {  //se encuentra  a la joven
      image(imagenes[12], 0, 0);
      texto.textosd(17, 35, 290);
      texto.btn(29, 610, 180, 17);//Boton 17  = SIGUIENTE -->acompañarjoven      decicion
    } else if (estado == "acompañarjoven") {  //decicion de acompañar
      image(imagenes[13], 0, 0);
      texto.textoDecision(18, 340, 80);
      texto.btn(27, 420, 180, 18 ); //Boton 18 = SI --> acompañar
      texto.btn(28, 610, 180, 19 ); //Boton 19 = NO --> noacompañar
    } else if (estado == "acompañar") {  //si acompañar
      image(imagenes[14], 0, 0);
      texto.textosd(19, 35, 290);
      texto.btn(29, 610, 180, 20);//Boton 20  = SIGUIENTE -->creditos
    } else if (estado == "noacompañar") { //no acompañar
      image(imagenes[16], 0, 0);
      texto.textosd(20, 35, 290);
      texto.btn(29, 610, 180, 21);//Boton 21  = SIGUIENTE -->creditos
    } else if (estado == "creditos") {
      image(imagenes[17], 0, 0);
      texto.creditos();
      texto.btn(21, 610, 180, 22);//Boton 22   = Volver al Inicio --> inicio
    }
  }

  void click() {
  }
}
