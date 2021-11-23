class Pantallas {
  String estado;
  int cant = 21, cant2 = 19;
  PImage imagenes [] =new PImage [19];
  Texto texto;
  Pantallas() {
    estado = "inicio";
    for ( int i = 0; i < cant2; i++ ) {
      imagenes[i] = loadImage ("imagen" + i + ".png");
    }    
    texto = new Texto();
  }
  void dibujar() {
    //----------- PANTALLAS ----------- 
    if (estado == "inicio"){
      image(imagenes[0], 0, 0);
      texto.btn(1, 420, 180,1);//Boton 1 = INICIAR --> presentacion
      texto.btn(2, 610, 180,2);//Boton 2 = CREDITOS --> creditos
      println(texto.ID2());
    }else if (estado == "presentacion"){
      image(imagenes[1], 0, 0);
      texto.textosd(0, 35, 290);
      texto.btn( 29,610, 180, 3); Boton 3 = SIGUIENTE --> aventuras
    }else if(estado == "aventuras"){
      image(imagenes[2], 0, 0);
      //clic sobre las imagenes
      texto.textoDecision(16, 180, 50); 
    }else if(estado == "hechicero1"){  //hechicero atrapado 1/2
     image(imagenes[3], 0, 0);
      texto.btn(29, 610, 180,2);//Boton 29  = SIGUIENTE -->    
    }else if(estado == "hechicero2"){  //hechicero atrapado 2/2
      
    
    }else if(estado == "armario"){  
    
    
    }else if(estado == "pociones"){  
    
    
    }else if(estado == "pocionverde"){  //1/2
    
    
    }else if(estado == "pocionverde"){ //2/2
    
    
    }else if(estado == "pocionazul"){
    
   
    }else if(estado == "ladrones"){
    
    
    }else if(estado == "lucha"){
    
    
    }else if(estado == "quedarseoro"){
    
    
    }else if(estado == "devolveroro"){
    
    
    }else if(estado == "acompañarjoven"){
    
    
    }else if(estado == "acompañar"){
    
    
    }else if(estado == "noacompañar"){
  
  
    }else if(estado == "creditos"){
  
  
  
  
  }
  void click() {
    
  }
}
