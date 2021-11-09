// TP5  | tmm1 | FdA | UNLP
// com2 | Prof. Matias Jauregui Lorda

/ *
NOMBRE / s ALUMNO / s *
----------------------------------- D'ANGELO, Victoria Y BESNATI Victoria. 

----------------------------------- "Las aventuras del Gato con Botas"
* /
Pantallas pantalla;
void setup(){
  size(800, 450);
  pantalla = new Pantallas();
}
void draw(){
  pantalla.dibujar();
}
void mouseClicked(){
  pantalla.botones();
}
