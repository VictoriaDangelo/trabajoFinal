aventuragrafica avg;
void setup(){
  size(800, 450);
  avg = new aventuragrafica();
}
void draw(){
  avg.dibujar();
}
void mouseClicked(){
  avg.click();
}
