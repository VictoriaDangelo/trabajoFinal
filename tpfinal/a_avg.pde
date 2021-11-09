class aventuragrafica{
  
  Pantallas pantalla;
  
  aventuragrafica(){
    pantalla = new Pantallas();
  }
  
  void dibujar(){
    pantalla.dibujar();
  }
  void click(){
    pantalla.botones();
  }
}

