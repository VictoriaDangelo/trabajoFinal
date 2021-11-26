// TP5  | tmm1 | FdA | UNLP
// com2 | Prof. Matias Jauregui Lorda

/*
NOMBRE / s ALUMNO / s *
 ----------------------------------- D'ANGELO, Victoria Y BESNATI Victoria. 
 
 ----------------------------------- "Las aventuras del Gato con Botas"
 */
aventuragrafica avg;
void setup() {
  surface.setSize(800, 450);
  //size(800, 450);
  avg = new aventuragrafica();
}
void draw() {
  avg.dibujar();
}
void mouseClicked() {
  avg.click();
}
