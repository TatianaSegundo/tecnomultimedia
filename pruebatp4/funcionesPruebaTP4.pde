void boton(float posX, float posY, float tamX, float tamY, int r) {
  if ((mouseX > posX-(tamX/2)) && (mouseX < posX+(tamX/2)) &&
    (mouseY > posY-(tamY/2)) && (mouseY < posY+(tamY/2))) {
    fill(#FFE8FB);
    if (mousePressed) {
      fill(#E88CD9);
    }
  } else {
    fill(#F9FAED);
  }
  rect(posX, posY, tamX, tamY, r);
}
///////PREGUNTAR: SE PUEDE CARGAR UN PFONT EN UNA FUNCION PROPIA?//////////
void textoBoton ( String texto, int tamTexto, color c, float x, float y ) {
  pushStyle();
  textAlign(CENTER, CENTER);
  //fuenteBoton = loadFont("Schoolbell-Regular-48.vlw");
  //textFont(fuenteBoton);
  //textSize(tamTexto);
  fill(c);
  text( texto, x, y );
  popStyle();
}

void papel(float xA, float xB, float yA, float yB, color c){
  float ancho = xB - xA;
  float alto = yB - yA;
  ancho = ancho/50;
  fill(c);
  
  beginShape();
  //V Izquierda superior
  vertex(xA,yA);
  //Picos entre esquina superior e inferior izquierda
  for( int i = 0; i < alto; i+=10){
   vertex(xA-random(-ancho, ancho), yA+i); 
  }
  //Izquierda a derecha inferior
  vertex(xA, yB);
  vertex(xB, yB);
  //Picos entre esquina superior e inferior derecha
  for( int i = 0; i < alto; i+=10){
   vertex(xB-random(-ancho, ancho), yB-i); 
  }
  //Derecha a izquierda superior
  vertex(xB, yA);
  endShape(CLOSE);
}
void verPapel(int pantallaID){
  if(pantalla == pantallaID){
papel(100,400,10,200,#F9FAED);
  }
}
  
