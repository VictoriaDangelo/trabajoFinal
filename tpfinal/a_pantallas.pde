class Pantallas {
  String estado;
  int cant = 21, cant2 = 19, ID;
  PImage imagenes [] =new PImage [19];
  PImage [] fondo = new PImage [4];
  Texto texto;
  Pantallas() {
    estado = "presentacion";
    for ( int i = 0; i < cant2; i++ ) {
      imagenes[i] = loadImage ("imagen" + i + ".png");
    }
    for (int i = 0; i < fondo.length; i++) {
      fondo[i] = loadImage("fondo"+i+".png");
    }
    texto = new Texto();
  }
  void dibujar(Juego j) {
    //----------- PANTALLAS ----------- 
    if (estado == "inicio") {//----------- Inicio
      image(imagenes[0], 0, 0);
      texto.btn(1, 490, 180, 1);//Boton 1 = INICIAR --> presentacion
      texto.btn(2, 680, 180, 2);//Boton 2 = CREDITOS --> creditos
      println(texto.ID2());
    } else if (estado == "presentacion") {//----------- Presentacion
      image(imagenes[1], 0, 0);
      texto.textosd(0, 200, 290); // No toma el barra N PREGUNTAR
      texto.btn( 28, width-100, height-50, 3); // Boton 3 = SIGUIENTE --> aventuras
    } else if (estado == "aventuras") {//-----------Elegir Aventura
      image(imagenes[2], 0, 0);
      //clic sobre las imagenes
      texto.textoDecision(width/2, 340, 80);
    } else if (estado == "ladrones") {// ----------- Ladrones
      image(imagenes[10], 0, 0);
      texto.textosd(13, 200, 290);
      texto.btn(28, width-100, height-50, 12);//Boton 12  = SIGUIENTE --> lucha
    } else if (estado == "lucha") {// ----------- Lucha
      image(imagenes[11], 0, 0);
      texto.textosd(14, 200, 290);
      texto.btn(28, width-100, height-50, 13);//Boton 13  = SIGUIENTE --> iniciojuego
      // --------------------------------- JUEGO ---------------------------------
    } else if (estado == "iniciojuego") {// ----------- Pantalla inicial juego
      image(fondo[1], 0, 0);
      texto.textoDecision(31, width/2, 100);
      texto.btn(29, width/2, height-50, 14);//Boton ??  = JUGAR --> jugar
    } else if (estado == "jugar") {
      image(fondo[0], 0, 0);
      j.dibujar();
      j.actualizar();
    } else if (estado == "ganar") {
    } else if (estado == "perder") {

      //---------------------------------------------------------------------------
      // Pantalla -- Perdes todo el oro y moris de hambre ah
    } else if (estado == "oro") { 
      image(imagenes[13], 0, 0); // ESTA NO ES
      texto.textoDecision(25, 340, 80);
      texto.btn(23, width-250, height-50, 14 );//Boton 14 = SI --> joven
      texto.btn(24, width/3, height-50, 15 );//Boton 15 = NO --> quedarseoro
    } else if (estado == "quedarseoro") { 
      image(imagenes[15], 0, 0);
      texto.btn(28, width-100, height-50, 16);//Boton 16  = SIGUIENTE --> creditos
      texto.textosd(15, 200, 290);
    } else if (estado == "joven") {//----------- Se encuentra  a la joven
      image(imagenes[12], 0, 0);
      texto.textosd(16, 200, 290);
      texto.btn(28, width-100, height-50, 17);//Boton 17  = SIGUIENTE -->acompañarjoven      decicion
    } else if (estado == "acompañarjoven") {//-----------Decicion de acompañar
      image(imagenes[13], 0, 0);
      texto.textoDecision(17, width/2, 80);
      texto.btn(23, width-250, height-50, 18 ); //Boton 18 = SI --> acompañar
      texto.btn(24, width/3, height-50, 19 ); //Boton 19 = NO --> no acompañar
    } else if (estado == "acompañar") {//-----------Si acompañar
      image(imagenes[14], 0, 0);
      texto.textosd(18, 200, 290);
      texto.btn(28, width-100, height-50, 20);//Boton 20  = SIGUIENTE -->creditos
    } else if (estado == "noacompañar") {//-----------No acompañar
      image(imagenes[16], 0, 0);
      texto.textosd(19, 200, 290);
      texto.btn(28, width-100, height-50, 21);//Boton 21  = SIGUIENTE -->creditos
    } else if (estado == "creditos") {//----------- Creditos
      image(imagenes[17], 0, 0);
      texto.update();
      texto.creditos();
      texto.btn(20, width/2, height-50, 22);//Boton 22   = Volver al Inicio --> inicio
    }
    ID = texto.ID2();
  }
  void click() {
    if (ID == 1 && estado == "inicio" ) {
      estado = "presentacion";
    } else if (ID == 2 && estado == "inicio" ) {
      estado = "creditos";
    } else if (ID == 3 && estado == "presentacion" ) {
      estado = "aventuras";
      //} else if (mouseX < width/2 && estado == "aventuras" ) { // Otra Avetura
      //  estado = "hechicero1";
    } else if (mouseX > width/2 && estado == "aventuras") {
      estado = "ladrones";
    }
  }
}
