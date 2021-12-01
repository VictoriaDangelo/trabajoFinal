class Juego {
  //size( 550, 620 );
  int c = 3, c2 = 6, puntos;
  int vidas;
  //-----------
  Piedra[] piedra= new Piedra[c2];
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
    vidas = 3;
    puntos = 0;
  }
  //----------- COLISION LINGOTES -----------
  void lingotes( Lingotes[] l ) { 
    for ( int i = 0; i < l.length; i++ ) { 
      if (l[i].obtenerX() > bolsa.oposX() - bolsa.tamxo()/2 && l[i].obtenerX()< bolsa.oposX() + bolsa.tamxo()/2 && l[i].obtenerY()> bolsa.oy() - bolsa.tamyo()/2 && l[i].obtenerY()< bolsa.oy() + bolsa.tamyo()/2 ) { 
        puntos = puntos + 10; 
        l[i].reciclar();
        colision2.play();
      }
    }
  }
  //----------- COLISION PIEDRAS -----------
  void piedra( Piedra[] p) { 
    for ( int i = 0; i < p.length; i++ ) { 
      if (p[i].obtenerX() > bolsa.oposX() - bolsa.tamxo()/2 && p[i].obtenerX() < bolsa.oposX() + bolsa.tamxo()/2 && p[i].obtenerY() > bolsa.oy() - bolsa.tamyo()/2 && p[i].obtenerY() < bolsa.oy() + bolsa.tamyo()/2) {   
        p[i].reciclar(); 
        colision1.play();
        vidas =  vidas - 1;
        puntos = puntos - 5;
      }
    }
  }
  //----------- DIBUJAR -----------
  void dibujar() { 
    for ( int i = 0; i < c; i++ ) {  
      lingotes[i].dibujar();
      piedra[i].dibujar();
    }
    bolsa.dibujar();
  }
  //----------- UPDATE -----------
  void actualizar() {
    for ( int i = 0; i < piedra.length; i++ ) {  
      piedra[i].actualizar();
    }
    for ( int i = 0; i < lingotes.length; i++ ) {  
      lingotes[i].actualizar();
    }// ----------- COLISIONES -----------
    lingotes(lingotes);
    piedra(piedra);
  }//----------- REINICIAR ----------
  void reinicio() {
    vidas = 3;
    puntos = 0;
    for ( int i = 0; i < piedra.length; i++ ) {  
      piedra[i].reiniciar();
    }
    for ( int i = 0; i < lingotes.length; i++ ) {  
      lingotes[i].reiniciar();
    }
  }
}
