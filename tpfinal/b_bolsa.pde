class Bolsa {
  float x, y, t;
  int tam, posY, posX, puntos;
  PImage bolsa;
  //-----------
  Bolsa() {
    tam = 90; 
    puntos = 0;
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
  //----------- REINICIAR -----------
  void reinicio(){
    puntos = 0;
  }
  
  //----------- COLISION LINGOTES -----------
    void lingotes( Lingotes[] l ) { 
    for ( int i = 0; i < l.length; i++ ) { 
      if (l[i].obtenerX() > posX - tam/2 && l[i].obtenerX()< posX + tam/2 && l[i].obtenerY()> y - tam/2 && l[i].obtenerY()< y + tam/2 ) {// bolsa 
        puntos = puntos + 10; 
        l[i].reciclar(); 
        tam++;
      } 
      if (puntos == 100) { 
        //antallas.estado = "ganar";
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
        //Pantallas.estado = "perder";
      }
    }
  }
}
