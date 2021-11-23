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
    //----------- PANTALLAS ----------- 
    if (estado == "inicio"){
      image(imagenes[0], 0, 0);
      texto.btn(1, 420, 180,1);//Boton 1 = INICIAR --> presentacion
      texto.btn(2, 610, 180,2);//Boton 2 = CREDITOS --> creditos
      println(texto.ID2());
    }else if (estado == "presentacion"){
      image(imagenes[1], 0, 0);
      texto.textosd(0, 35, 290);
    }
  }

  void click() {
    
  }
}
