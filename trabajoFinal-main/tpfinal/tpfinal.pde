// TP5  | tmm1 | FdA | UNLP
// com2 | Prof. Matias Jauregui Lorda

/*
NOMBRE / s ALUMNO / s *
 ----------------------------------- D'ANGELO, Victoria Y BESNATI Victoria. 
 
 ----------------------------------- "Las aventuras del Gato con Botas"
 */


import processing.sound.*;
aventuragrafica avg;
SoundFile ganar, perder, colision1, colision2;

void setup() {
  surface.setSize(800, 450);
  noCursor();
  avg = new aventuragrafica();
  ganar = new SoundFile(this, "ganar.wav");
  perder = new SoundFile(this, "perder.wav");
  colision1 = new SoundFile(this, "colision1.wav");
  colision2 = new SoundFile(this, "colision2.wav");
  //size(800, 450);
}
void draw() {
  avg.dibujar();
}
void mouseClicked() {
  avg.click();
}
