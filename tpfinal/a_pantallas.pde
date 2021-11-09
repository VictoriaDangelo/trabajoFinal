class Pantallas {
  int estado, cant = 19;
  int ID1[]=new int [cant];
  PImage imagenes [] =new PImage [cant];
  Texto texto;

  Pantallas() {
    estado=0;
    for ( int i = 0; i < cant; i++ ) {
      imagenes[i] = loadImage ("imagen" + i + ".png");
    }
  }

  void inicio() {
    if (estado == 0) {
      image(imagenes[0], 0, 0);
      // gato con botas titulo imagen
      texto.btn(3, 445, 220, ID1[0]);// BOTON 0 INICIO
      texto.btn(4, 620, 220, ID1[1]);// BOTON 1  CREDITOS
    }
  }
  void pantallas() {

    if (estado == 1) {           //------------------------PRESENTACIÓN
      image(imagenes[1], 0, 0);
      texto.textosd(0, 35, 290);
      texto.btn(1, 700, 350, ID1[2]);// BOTON 2 CONTINUAR
      
    } else if (estado == 2) {    //------------------------ELEGIR AVENTURA
      image(imagenes[2], 0, 0);
      // imagenes de decicion()
      texto.textoDecision(7, 180, 50);
      //texto.btn(1, 700, 350, ID1[3]);// BOTON 3 CONTINUAR------------------------SOBRA BOTON
      
    } else if (estado == 3) {    //------------------------HECHICERO 1/2
      image(imagenes[3], 0, 0);
      texto.textosd(8, 35, 290);
      texto.btn(1, 700, 350, ID1[4]);// BOTON 4 CONTINUAR
      
    } else if (estado == 4) {    //------------------------HECHICERO 2/2
      image(imagenes[4], 0, 0);
      texto.textosd(9, 35, 290);
      texto.btn(1, 700, 350, ID1[5]);// BOTON 5 CONTINUAR
      
    } else if (estado ==  5 ) { //------------------------ARMARIO CON POCIONES 
      image(imagenes[5], 0, 0);
      texto.textosd(10, 35, 290);
      texto.btn(1, 700, 350, ID1[6]);// BOTON 6 CONTINUAR
      
    } else if (estado == 6) { //------------------------ELEGIR POCION
      image(imagenes[6], 0, 0);
      texto.textoDecision(11, 220, 70);
      // CAMBIAR COLOR DEL TEXTO
      texto.btn(28, 175, 350, ID1[7]);// BOTON 7 VERDE 
      texto.btn(29, 560, 350, ID1[8]);// BOTON 8 AZUL
    } else if (estado == 7) {   //------------------------POCION VERDE 1/2 
      image(imagenes[8], 0, 0); 
      texto.textosd(12, 35, 290);
      texto.btn(1, 700, 350, ID1[9]);// BOTON 9 CONTINUAR
    } else if (estado == 8) {   //------------------------POCION VERDE 2/2   
      image(imagenes[9], 0, 0); 
      texto.textosd(13, 35, 290);
      texto.btn(1, 700, 350, ID1[10]);// BOTON 10 CONTINUAR // CREDITOS
    } else if (estado == 9) {   //------------------------POCION AZUL   
      image(imagenes[7], 0, 0);
      texto.textosd(14, 35, 290);
      texto.btn(1, 700, 350, ID1[11]);// BOTON 11 CONTINUAR // CREDITOS
    } else if (estado == 10) {  //------------------------AVENTURA LADRONES
      image(imagenes[10], 0, 0);
      texto.textosd(15, 35, 290);
      texto.btn(1, 700, 350, ID1[12]);// BOTON 12 CONTINUAR
      
    } else if (estado == 11) {  //------------------------LUCHA CON LOS LADRONES 
      image(imagenes[11], 0, 0);
      texto.textosd(16, 35, 290);
      texto.btn(1, 700, 350, ID1[13]);// BOTON 13 CONTINUAR
      
    } else  if (estado == 12) { //------------------------QUEDARTE CON EL ORO cambiar a intro a el jueo las monedas se caen 
      image(imagenes[15], 0, 0);
      texto.textosd(17, 35, 290);
      texto.btn(1, 700, 350, ID1[14]);// BOTON 14 CONTINUAR a pantalla 18 MENU MINI JUEGO
    } else if (estado == 13) {  //------------------------CONOCE GATA
      image(imagenes[12], 0, 0);
      texto.textosd(18, 35, 290);
      texto.btn(1, 700, 350, ID1[15]);// BOTON 15 CONTINUAR
    } else if (estado == 14) {  //------------------------DECISION DE ACOMAPAÑAR 
      image(imagenes[13], 0, 0);
      texto.textoDecision(19, 160, 45);
      texto.btn(28, 175, 350, ID1[16]);// BOTON 16 SI 
      texto.btn(29, 560, 350, ID1[17]);// BOTON 17 NO
    } else if (estado == 15) {  //------------------------SI ACOMPAÑAR 
      image(imagenes[14], 0, 0);
      texto.textosd(20, 35, 290);
      texto.btn(1, 700, 350, ID1[18]);// BOTON 18 CONTINUAR a creditos
    } else if (estado == 16) {  //------------------------NO ACOMPAÑAR
      image(imagenes[16], 0, 0);  
      texto.textosd(21, 35, 290);
      texto.btn(1, 700, 350, ID1[19]);// BOTON 19 CONTINUAR a creditos
    } else if (estado == 17) {  //------------------------CREDITOS     

      image(imagenes[16], 0, 0);
      texto.creditos();
      
    } else if (estado == 18 ) { //MINI  JUEGO   MENU    --------- 
      //image(fondo [1], 0, 0);
    } else if (estado == 19 ) {//MINI  JUEGO   JUEGO    --------- 
      //image(fondo [0], 0, 0);
    } else if (estado == 20 ) {//MINI  JUEGO   PERDER   --------- 
      //image(fondo [2], 0, 0);
    } else if (estado == 21 ) {//MINI  JUEGO   GANAR    --------- 
      //image(fondo [3], 0, 0);
    }
    
  }
  
  void botones(){
    if (texto.detectarbtn() == true){
      if(ID1[cant] == ID1[0]){
        estado = 1;
      }else if (ID1[cant] == ID1[1]){
        estado = 17;
      }else if (ID1[cant] == ID1[2]){
        estado = 2;
      }else if (ID1[cant] == ID1[3]){
        estado = 0;
      }else if (ID1[cant] == ID1[4]){
        estado = 4 ;
      }else if (ID1[cant] == ID1[5]){
        estado = 5;
      }else if (ID1[cant] == ID1[6]){
        estado = 6;
      }else if (ID1[cant] == ID1[7]){
        estado = 7;
      }else if (ID1[cant] == ID1[8]){
        estado = 9;
      }else if (ID1[cant] == ID1[9]){
        estado = 8;
      }else if (ID1[cant] == ID1[10]){
        estado = 17;
      }else if (ID1[cant] == ID1[11]){
        estado = 17;
      }else if (ID1[cant] == ID1[12]){
        estado = 11;
      }else if (ID1[cant] == ID1[13]){
        estado = 12;
      }else if (ID1[cant] == ID1[14]){
        estado = 18;
      }else if (ID1[cant] == ID1[15]){
        estado = 14;
      }else if (ID1[cant] == ID1[16]){
        estado = 15;
      }else if (ID1[cant] == ID1[17]){
        estado = 16;
      }else if (ID1[cant] == ID1[18]){
        estado = 17;
      }else if (ID1[cant] == ID1[19]){
        estado = 17;
      }
    }
  }
}
