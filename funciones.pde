void botones( String texto, int tamTexto, color c1, color c2, float posX, float posY, float tamX, float tamY, int r) {
  pushStyle();
  fill(colorBoton(posX, posY, tamX, tamY, c1, c2));
  rect(posX, posY, tamX, tamY, r);
  fill(0);
  fuenteBoton = loadFont("Schoolbell-Regular-48.vlw");
  textFont(fuenteBoton);
  textAlign(CENTER, CENTER);
  textSize(tamTexto);
  textLeading(19);
  text(texto, posX, posY);
  popStyle();
}

void botonContinuar() {
  pushStyle();
  fill(colorBoton(width-80, 40, 100, 25, #EAEDFF, #8F8CE8));
  rect(width-80, 40, 100, 25, 7);
  fill(0);
  textAlign(CENTER, CENTER);
  textSize(16);
  text("Continuar", width-80, 40);
  popStyle();
}

void botonReinicio() {
  pushStyle();
  fill(colorBoton(width/2, (height/6*5), 150, 50, #ECFFEA, #97E88C));
  rect(width/2, (height/6*5), 150, 50, 7);
  fill(0);
  textAlign(CENTER, CENTER);
  textSize(18);
  text("Volver al menú", width/2, (height/6*5));
  popStyle();
}

void relato(String texto, float tamTexto, float posX, float posY) {
  pushStyle();
  fill(255);
  textSize(tamTexto);
  textAlign(CENTER, CENTER);
  text(texto, posX, posY);
  popStyle();
}
void lamina(float posY,color c) {
  pushStyle();
  rectMode(CORNER);
  fill(c, 200);
  rect(0, 0, width, posY);
  popStyle();
}
color colorBoton (float posX, float posY, float tamX, float tamY, color c1, color c2) {
  if ((mouseX > posX-(tamX/2)) && (mouseX < posX+(tamX/2)) &&
    (mouseY > posY-(tamY/2)) && (mouseY < posY+(tamY/2))) {
    if (mousePressed) {
      return color(c2);
    } else {
      return color(c1);
    }
  } else {
    return color(#F9FAED);
  }
}
