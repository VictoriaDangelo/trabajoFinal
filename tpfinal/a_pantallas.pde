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
      
    } else if (estado == 2){    //ELEGIR AVENTURA
      image(imagenes[2], 0, 0);
      
    } else if (estado == 3){    //HECHICERO 1/2
      image(imagenes[3], 0, 0);
      
    } else if (estado == 4){    //HECHICERO 2/2
      image(imagenes[4], 0, 0);
      
    } else if (estado ==  5 ) {  // ARMARIO CON POCIONES 
      image(imagenes[5], 0, 0);
      
    } else if (estado == 6)  {   //ELEGIR POCION
      image(imagenes[6], 0, 0);
      
    } else if (estado == 7) {   // POCION VERDE 1/2 
      image(imagenes[8], 0, 0); 
       
    } else if (estado == 8) {   // POCION VERDE 2/2   
      image(imagenes[9], 0, 0); 
      
    } else if (estado == 9) {  //POCION AZUL   
      image(imagenes[7], 0, 0);
      
    } else if (estado == 10) {   //AVENTURA LADRONES
      image(imagenes[10], 0, 0);
    
    } else if (estado == 11) {   //LUCHA CON LOS LADRONES 
      image(imagenes[11], 0, 0);
      
    } else  if (estado == 12) {  //QUEDARTE CON EL ORO
      image(imagenes[15], 0, 0);
     
    } else if (estado == 13) {    //CONOCE GATA
      image(imagenes[12], 0, 0);
      
    } else if (estado == 14) {    //DECISION DE ACOMAPAÑAR 
      image(imagenes[13], 0, 0);
      
    } else if (estado == 15) {    //SI ACOMPAÑAR 
      image(imagenes[14], 0, 0);
    
    } else if (estado == 16) {    //NO ACOMPAÑAR
      image(imagenes[16], 0, 0);   
       
    } else if (estado == 17) {    //CREDITOS     
      creditos(); 
    
    } else if (estado == 18 ) {   //MINI  JUEGO   menu    --------- 
     image(fondo [1], 0, 0);   
    
    
    } else if (estado == 19 ) {   //MINI  JUEGO   juego    --------- 
    image(fondo [0], 0, 0);  
    
    
    } else if (estado == 20 ) {   //MINI  JUEGO   perder   --------- 
    image(fondo [2], 0, 0);  
    
    
    } else if (estado == 21 ) {   //MINI  JUEGO   ganar    --------- 
    image(fondo [3], 0, 0);  
    
   }
   
  void creditos() {
  
  image(imagenes[16], 0, 0);
  pushStyle();
  textFont( fuente, 48);
  textSize(28);
  fill(0);
  text(texto [23], 410, frameCount%460);
  fill(255);
  text(texto [23], 412, frameCount%460);
  textSize(19);
  text(texto [22], 10, 430);
  popStyle();
    
    
  }
  // void por cada una de las pantallas
  void iniciojuego() {
  }
}

