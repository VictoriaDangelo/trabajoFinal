class Bolsa {
  int tam, posX, y;
  PImage bolsa;
  //-----------
  Bolsa() {
    posX = width/2;
    y = height;
    tam = 90; 
    bolsa = loadImage( "bolsa.png" );
  }
  //----------- DIBUJAR -----------
  void dibujar() {
    posX = mouseX;
    pushStyle();
    imageMode(CENTER);
    bolsa.resize(tam, tam);
    image(bolsa, posX, y);
    popStyle();
  }
  //----------- RETURNS -----------
  int tamo() {
    return tam;
  }
  int oposX() {
    return posX;
  }
  int oy() {
    return y;
  }

  /*
  //----------- COLISION LINGOTES -----------
   void lingotes( Lingotes[] l ) { 
   for ( int i = 0; i < l.length; i++ ) { 
   if (l[i].obtenerX() > posX - tam/2 && l[i].obtenerX()< posX + tam/2 && l[i].obtenerY()> y - tam/2 && l[i].obtenerY()< y + tam/2 ) {// bolsa 
   puntos = puntos + 10; 
   l[i].reciclar(); 
   tam++;
   } 
   if (puntos == 100) { 
   }
   } 
   }
   //----------- COLISION PIEDRAS -----------
   void piedra( Piedra[] p) { 
   for ( int i = 0; i < p.length; i++ ) { 
   if (p[i].obtenerX() > posX - tam/2 && p[i].obtenerX()< posX + tam/2 && p[i].obtenerY()> y - tam/2 && p[i].obtenerY()< y + tam/2) { 
   t += p[i].tam;   
   p[i].reciclar(); 
   puntos = puntos - 5; 
   }
   if (puntos <= -10) { 
   }
   }
   
   */
}
