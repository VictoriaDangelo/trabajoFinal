class Juego {
  String estado2;
  String [] texto = new String [5];
  PImage [] fondo = new PImage [4];
  int c = 5; 
  //-----------
  Piedra[] piedra= new Piedra[c];
  Lingotes[] lingotes = new Lingotes[c];
  Bolsa bolsa;

  Juego() {
    //-----------
    bolsa = new Bolsa();
    //-----------
    for ( int i = 0; i < lingotes.length; i++ ) { 
      lingotes[i] = new Lingotes();
    }
    for ( int i = 0; i < piedra.length; i++ ) {
      piedra[i] = new Piedra();
    }
    //-----------
    for (int i = 0; i < fondo.length; i++) {
      fondo[i] = loadImage("fondo"+i+".png");
    }
  }
  //----------- DIBUJAR -----------
  void dibujar() { 
    if (estado2 == "jugar") {
      image(fondo[0], 0, 0);
      bolsa.dibujar();     
      for ( int i = 0; i < c; i++ ) {  
        lingotes[i].dibujar();
        piedra[i].dibujar();
      }
      text("Puntos = " + bolsa.puntos, 20, 40);
    }
  }
  //----------- UPDATE -----------
  void actualizar() {
    if (estado2 == "jugar") {
      for ( int i = 0; i < piedra.length; i++ ) {  
        piedra[i].actualizar();
      }
      for ( int i = 0; i < lingotes.length; i++ ) {  
        lingotes[i].actualizar();
      }
      // ----------- COLISIONES -----------
      bolsa.lingotes(lingotes);
      bolsa.piedra(piedra);
    }
  }
}
