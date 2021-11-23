class Texto {
  int cant = 30, x1, y1, posx, ID1;
  String [] texto = new String [cant];
  PFont fuente, fuente1;
  Texto() {
    texto [0] = " Hola, soy el gato con botas y en esta ocación \n tú decidiras mi destino a traves \n de una serie de deciciones..."; 
    texto [1] = "CONTINUAR";
    texto [2] = " Presiona tecla IZQUIERDA o DERECHA ";
    texto [3] = "INICIAR";
    texto [4] = "CRÉDITOS";
    texto [5] = "Salvarle la vida a un hechicero ";
    texto [6] = "Luchar contra ladrones";
    texto [7] = "ELIGE UNA AVENTURA ";
    texto [8] = " Un hechicero se encuentra atrapado\n por una loca duquesa que quiere saber el   \n secreto de sus hechizos...";
    texto [9] = " Piensas rapidamente una solucion\n para ayudarlo a escapar...";
    texto [10] = " Te encuentras con un armario \nrepleto de pociones mágicas,\npero hay dos que te llaman la atención...";
    texto [11] = "¿Qué pocion eliges? "; 
    texto [12] = " La pocion verde hizo que caigan\n bolsas de maiz sobre a la duquesa\n quedó atrapada y no podrá salir... ";
    texto [13] = " Rapidamente ayudaste al hechicero\n a escapar, te da las gracias por ayudarlo...";
    texto [14] = " Esa no fue una buena pocion \n te convertio en burro...";
    texto [15] = " Ves a un grupo de ladrones \n intentando robar oro...";
    texto [16] = " Tienes una lucha contra ellos, \n ganás y recuperas el oro...";
    texto [17] = " Qué mal que tú tambien hayas robado el oro \n eres complice de esos ladrones... ";
    texto [18] = " Luego de devolver el oro, \n en el camino te encuentras a una joven \n la joven esta perdida...";
    texto [19] = " ¿Quieres acompañarla a su casa?";
    texto [20] = " Acompañas a la joven a su casa como todo un\n caballero, ella te lo agradece...";
    texto [21] = " Eyyy dejar a una joven sola y perdida\n no fue una buena decicion de tu parte...";
    texto [22] = " Presiona tecla ENTER para volver al inicio  "; 
    texto [23] = " Realizado por:\n   D'ANGELO, Victoria. \n   Tecnología Multimedial 1 \n   Comision 2 \n   UNLP - FDA  2021 \n\n   Personajes: \n   Gato con Botas\n   Hechicero \n   Duquesa\n   Ladrones \n   Joven Gata";
    texto [24] = " Las aventuras\n  del Gato con Botas  ";
    texto [25] = " SI ";
    texto [26] = " NO ";
    texto [27] = "¿Devolver el oro a su dueño?";
    texto [28] = "VERDE";
    texto [29] = "AZUL";
    fuente = loadFont("SitkaDisplay-48.vlw");
    textFont(fuente);
    fuente1 = loadFont("VinerHandITC-48.vlw");
    textFont(fuente1);
  }
  void textosd(int nro, int rectx, int recty) { // Dialogo 
    pushStyle();
    rectMode(CENTER);
    fill(222);
    rect(rectx, recty, 340, 80);
    textFont(fuente);
    fill(0);
    textSize(18);
    text(texto [nro], rectx-165, recty-15);
    popStyle();
  }
  void textoDecision(int nro, int x, int y) { //Titulos  
    pushStyle();
    textFont(fuente1, 48);
    fill(255);
    textSize(30);
    text(texto [nro], x, y);
    popStyle();
  }
  void btn(int nro, int x, int y, int ID) { // Botones  
    ID1=ID;
    x1= x;
    y1= y;
    pushStyle();
    rectMode(CENTER);
    noStroke();
    fill(224, 145, 41);
    rect(x, y, 135, 60, 10);
    fill(255);
    textFont(fuente);
    textSize(28);
    textAlign(CENTER, CENTER);
    text(texto [nro], x, y);
    popStyle();
  }
  void creditos() {
    pushStyle();
    textFont( fuente, 48);
    textSize(28);
    fill(0);
    text(texto [23], 410, posx);
    fill(255);
    text(texto [23], 412, posx);
    textSize(19);
    text(texto [22], 10, 430);
    popStyle();
  }
  void update() {
    posx = posx - 4;
  }
  boolean detectarbtn() {
    if (mouseX> x1 - 135/2 && mouseX < x1 + 135/2 && mouseY > y1 - 60/2 && mouseY < y1 + 60/2) {
      return true;
    } else {
      return true;
      //imagen para cuando el mouse no esta en el boton
    }
  }
}
