void boton(float posX, float posY, float tamX, float tamY, int r) {
  if ((mouseX > posX) && (mouseX < posX+tamX) &&
    (mouseY > posY) && (mouseY < posY+tamY) && mousePressed ==true) {
    fill(#FFE8FB);
  } else{
    fill(#F9FAED);
  }

  rectMode(CENTER);
  rect(posX, posY, tamX, tamY, r);
  fill(0);
  //text(texto, posTX, posTY);

}
///////PREGUNTAR: SE PUEDE CARGAR UN PFONT EN UNA FUNCION PROPIA?//////////
void textoBoton ( String texto, int tamTexto, color c, float x, float y ){
  pushStyle();
  textAlign(CENTER,CENTER);
  fuenteBoton = loadFont("Schoolbell-Regular-48.vlw");
  textFont(fuenteBoton);
  textSize(tamTexto);
  fill(c);
  text( texto, x, y );
  popStyle();
}
void textoCuerpo ( String texto, int tamTexto, color c, float x, float y ){
  pushStyle();
  textAlign(CENTER,CENTER);
  fuenteCuerpo = loadFont("Gaegu-Bold-48.vlw");
  textFont(fuenteCuerpo);
  textSize(tamTexto);
  fill(c);
  text( texto, x, y );
  popStyle();
}
