class Pantallas {
  int estado, cant = 19;
  PImage imagenes [] =new PImage [cant];

  Pantallas() {
    estado=0;
    for ( int i = 0; i < cant; i++ ) {
      imagenes[i] = loadImage ("imagen" + i + ".png");
    }
  }

  void inicio() {
    if (estado == 0){
      image(imagenes[0], 0, 0);
      // texto y botones
    }  
  }
  void pantallas() {
    //PRESENTACIÓN
    if (estado == 1){
      image(imagenes[1], 0, 0);
      
    } else if (estado == 2){ //ELEGIR AVENTURA
      image(imagenes[2], 0, 0);
      
    } else if (estado == 3){ //HECHICERO 1/2
      image(imagenes[3], 0, 0);
      
    } else if (estado == 4){ //HECHICERO 2/2
      image(imagenes[4], 0, 0);
      
    }
    
    
    
    
  }
  
  void creditos() {
    
    
  }
  // void por cada una de las pantallas
  void iniciojuego() {
  }
}

