class aventuragrafica {
  Pantallas pantalla;
  Juego juego;
  
  aventuragrafica() {
    pantalla = new Pantallas();
    juego = new Juego();
  }

  void dibujar() {
    pantalla.dibujar(juego);
  }
  void click() {
    pantalla.click();
  }
}
