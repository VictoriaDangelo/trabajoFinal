class Piedra {
  float x, y;
  float tam;
  float vel;
  PImage piedra;
  Piedra() { 
    //-----------
    x = random( -20, width );
    y = -100;
    tam = random( 30, 70 );
    vel = random( 1, 3 );
    //-----------
    piedra = loadImage("piedra.png");  
    piedra.resize( int(tam), int(tam) );
  }
  //----------- UPDATE -----------
  void actualizar() {
    y = y + vel;
    if ( y > height + tam/2 ) {
      reciclar();
    }
  }
  //----------- DIBUJAR -----------
  void dibujar() {
    pushStyle();
    imageMode(CENTER);
    image( piedra, x, y );
    popStyle();
  }
  //----------- RECICLAR -----------
  void reciclar() {
    x = random( width );
    y = -100;
    tam = random( 40, 80 );
    vel = random( 1, 3 );
  }
  //----------- RETURNS -----------
    float obtenerX() {
    return x;
  }
  float obtenerY() {
    return y;
  }
}
