class Texto {
  int cant = 30, posx, ID1, nrotxt;// KE creo q nrotxt 
  String [] texto;
  PFont fuente, fuente1;
  Texto() {
    //----------- CARGA ----------- 
    texto = loadStrings("texto.txt");
    fuente = loadFont("SitkaDisplay-48.vlw");
    textFont(fuente);
    fuente1 = loadFont("VinerHandITC-48.vlw");
    textFont(fuente1);
    posx = height;
  }//----------- DIALOGO ----------- 
  void textosd(int nro, int rectx, int recty) { 
    pushStyle();
    rectMode(CENTER);
    fill(222);
    rect(rectx, recty, 340, 80);
    textFont(fuente);
    fill(0);
    textSize(18);
    text(texto[nro], rectx-165, recty-15);
    popStyle();
  }//----------- TITULOS -----------
  void textoDecision(int nro, int x, int y) { 
    pushStyle();
    textAlign(CENTER, CENTER);
    textFont(fuente1, 48);
    fill(255);
    textSize(30);
    text(texto [nro], x, y);
    popStyle();
  }//----------- BOTONES -----------
  void btn(int nro, int x, int y, int ID) { 
    pushStyle();
    rectMode(CENTER);
    noStroke();
    fill(224, 145, 41);
    rect(x, y, 165, 60, 10);
    fill(255);
    textFont(fuente);
    textSize(26);
    textAlign(CENTER, CENTER);
    text(texto[nro], x+2, y);
    if (detectarbtn(x, y, 135, 60)) {
      circle(mouseX, mouseY, 10);
      ID1 = ID;
    } else {
      rect(mouseX, mouseY, 10, 10);
    }
    popStyle();
  }
  void update() {
    posx --;
    if(posx < -10){
      posx = height;
    }
  }
  void creditos() {
    pushStyle();
    textFont(fuente, 48);
    textSize(19);
    fill(0);
    text(texto [21], 410, posx);
    fill(255);
    text(texto [21], 412, posx);
    textSize(26);
    text(texto [22], 10, 100);
    popStyle();
  }
  int ID2() {
    return ID1;
  }
  boolean detectarbtn(int x1, int y1, int tamx, int tamy) {
    if (mouseX> x1 - tamx/2 && mouseX < x1 + tamx/2 && mouseY > y1 - tamy/2 && mouseY < y1 + tamy/2) {
      return true;
    } else {
      return false;
      //imagen para cuando el mouse no esta en el boton
    }
  }
}
