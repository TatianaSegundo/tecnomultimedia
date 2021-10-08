//TP 4 - Aventura gráfica
//Alumna: Tatiana Segundo
//Link de Youtube: https://youtu.be/OTHPumpTY-Q
PFont fuenteBoton;
PImage tiza;
PImage fondo [] = new PImage [13];
String[] textos;
int pantalla;
void setup() {
  size(800, 600);
  rectMode(CENTER);
  noStroke();
  smooth();
  textos = loadStrings("textosPantallas.txt");
  tiza = loadImage("tiza.png");
  noCursor();
  pantalla = 0;
  for (int i = 0; i< 13; i++) {
    fondo[i] = loadImage("fondo"+ nf(i, 2) +".jpg");
  }
}

void draw() {

  if (pantalla == 0) {
    image(fondo[0], 0, 0);
    botones("Comenzar", 28, #F7EAFF, #C48CE8, width/2, (height/4*3), 200, 50, 7);
    botones("Créditos", 20, #F7EAFF, #C48CE8, width/2, (height/7*6), 200, 25, 7);
  } else if (pantalla == 1) {
    image(fondo[1], 0, 0);
    relato(textos[0], 40, width/2, 250);
    relato(textos[1], 24, width/2, 300);
    relato(textos[2], 24, width/2, 340);
    botonContinuar();
  } else if (pantalla == 2) {
    image(fondo[2], 0, 0);
    lamina(200, 100);
    relato(textos[3], 30, width/2, 40);
    for (int i = 4; i<8; i++) {
      relato(textos[i], 22, width/2, 80+(i-4)*30);
    }
    botonContinuar();
  } else if (pantalla == 3) {
    image(fondo[3], 0, 0);
    lamina(190, 100);
    for (int i = 8; i<12; i++) {
      relato(textos[i], 22, width/2, 50+(i-8)*30);
    }
    botones("No entrar a clase", 18, #FFE8FB, #E88CD9, width/4, (height/4*3), 150, 45, 7);
    botones("Sentarte solx", 18, #FFE8FB, #E88CD9, width/2, (height/4*3), 150, 45, 7);
    botones("Sentarte con el\nchico que está solo", 18, #FFE8FB, #E88CD9, (width/4*3), (height/4*3), 150, 45, 7);
  } 
  //HISTORIA 1
  else if (pantalla == 4) {//No entrás a clase
    image(fondo[4], 0, 0);
    lamina(190, 100);
    relato(textos[12], 22, width/2, 80);
    relato(textos[13], 22, width/2, 110);
    botonContinuar();
  } else if (pantalla == 5) {//Te castigan
    image(fondo[5], 0, 0);  
    lamina(190, color(255, 0, 0));
    relato(textos[14], 22, width/2, 80);
    relato(textos[15], 30, width/2, 120);
    botonReinicio();
  } 
  //HISTORIA 2
  else if (pantalla == 6) {
    image(fondo[6], 0, 0); 
    lamina(190, color(255, 0, 0));
    relato(textos[16], 22, width/2, 80);
    relato(textos[15], 30, width/2, 120);
    botonReinicio();
  } 
  //HISTORIA 3 ---- Bifurcación
  //¿Con quién vas a hablar?
  else if (pantalla == 7) {//Te sentás con Martín
    image(fondo[9], 0, 0);
    lamina(190, 100);
    relato(textos[17], 22, width/2, 90);
    botones("Hablar sólo con él", 18, #FFE8FB, #E88CD9, width/4, (height/4*3), 200, 45, 7);
    botones("Hablar con los chicos\nde atrás", 18, #FFE8FB, #E88CD9, (width/4*3), (height/4*3), 200, 45, 7);
  } 
  //HISTORIA 3 ---- Hablar solo con Martín 
  else if (pantalla == 8) {
    image(fondo[7], 0, 0);
    lamina(190, 100);
    relato(textos[18], 22, width/2, 80);
    relato(textos[19], 22, width/2, 110);
    botonContinuar();
  } else if (pantalla == 9) {
    image(fondo[8], 0, 0);
    lamina(190, 100);
    for (int i = 20; i<23; i++) {
      relato(textos[i], 22, width/2, 80+(i-20)*30);
    }
    botonContinuar();
  } else if (pantalla == 10) {
    image(fondo[4], 0, 0);
    lamina(210, color(255, 0, 0));
    for (int i = 23; i<27; i++) {
      relato(textos[i], 22, width/2, 50+(i-23)*30);
    }
    relato(textos[15], 30, width/2, 180);
    botonReinicio();
  } 
  //HISTORIA 3 ---- Hablar con Fran y Agus ¿Volvés a intentar?
  else if (pantalla == 11) {
    image(fondo[9], 0, 0);
    lamina(190, 100);
    relato(textos[27], 22, width/2, 80);
    relato(textos[28], 22, width/2, 110);
    botones("Intentar nuevamente", 18, #FFE8FB, #E88CD9, width/4, (height/4*3), 200, 45, 7);
    botones("No intentar", 18, #FFE8FB, #E88CD9, (width/4*3), (height/4*3), 200, 45, 7);
  }
  //Intentar nuevamente
  else if (pantalla == 12) {
    image(fondo[9], 0, 0);
    lamina(190, 100);
    relato(textos[29], 22, width/2, 80);
    relato(textos[19], 22, width/2, 110);
    botonContinuar();
  }//Echar un vistazo al futuro o no
  else if (pantalla == 13) {
    image(fondo [10], 0, 0);
    lamina(190, 100);
    for (int i = 30; i<33; i++) {
      relato(textos[i], 22, width/2, 80+(i-30)*30);
    }
    botones("Sí", 18, #FFE8FB, #E88CD9, width/4, (height/4*3), 200, 45, 7);
    botones("No", 18, #FFE8FB, #E88CD9, (width/4*3), (height/4*3), 200, 45, 7);
  } else if (pantalla == 14) {
    image(fondo [10], 0, 0);
    lamina(190, 100);
    relato(textos[33], 22, width/2, 80);
    relato(textos[34], 22, width/2, 110);
    botonContinuar();
  } //Dedicatoria
  else if (pantalla == 15) {
    image(fondo[12], 0, 0);
    for (int i = 35; i<38; i++) {
      relato(textos[i], 22, width/2, (height/2-30)+(i-35)*30);
    }
    botonContinuar();
  } else if (pantalla == 16) {
    //Fotitos
    image(fondo[11], 0, 0);
    botonContinuar();
  }
  //Créditos-Pantalla final
  else if (pantalla == 17) {
    image(fondo[12], 0, 0);
    relato(textos[38], 40, width/2, 230);
    for (int i = 39; i<42; i++) {
      relato(textos[i], 24, width/2, 300+(i-40)*30);
    }
    botonReinicio();
  }
  /////////////////////////////
  println(pantalla);
  println(mouseX, mouseY);
  image(tiza, mouseX, mouseY);
}

void mouseClicked() {
  //Paso pantalla 0 a 1-------Comenzar
  if (pantalla == 0) {
    if (mouseX>(width/2-100) && mouseX<(width/2+100) && mouseY>(height/4*3-25) && mouseY<(height/4*3+25)) { //////Me guío más fácil
      pantalla=1;
    } else if (mouseX>(width/2-100) && mouseX<(width/2+100) && mouseY>(height/7*6-12.5) && mouseY<(height/7*6+12.5)) {
      pantalla=17;
    }
  }
  //Paso pantalla 1 a 2-------Continuar
  else if (pantalla == 1) {
    if (mouseX>(width-80-50) && mouseX<(width-80+50) && mouseY>27.5 && mouseY<52.5) {
      pantalla=2;
    }
  }//Paso pantalla 2 a 3-------Continuar
  else if (pantalla == 2) {
    if (mouseX>(width-80-50) && mouseX<(width-80+50) && mouseY>27.5 && mouseY<52.5) {
      pantalla=3;
    }
  }
  //Paso pantalla 3 a 4-------¿Con quién me siento?
  else if (pantalla == 3) {
    if (mouseX>(width/4-75) && mouseX<(width/4+75) && mouseY>(height/4*3-22.5) && mouseY<(height/4*3+22.5)) {        //No entrar a clase
      pantalla=4;
    } else if (mouseX>(width/2-75) && mouseX<(width/2+75) && mouseY>(height/4*3-22.5) && mouseY<(height/4*3+22.5)) {  //Sentarte solx
      pantalla=6;
    } else if (mouseX>(width/4*3-75) && mouseX<(width/4*3+75) && mouseY>(height/4*3-22.5) && mouseY<(height/4*3+22.5)) {  //Sentarte con el chico que está solx
      pantalla=7;
    }
  }
  //Paso pantalla 4 a 5-------Te encuentran fuera del salón
  else if (pantalla == 4) {
    if (mouseX>(width-80-50) && mouseX<(width-80+50) && mouseY>27.5 && mouseY<52.5) { //Continuar
      pantalla=5;
    }
  }
  //Paso pantalla 5 a 0-------Te castigan = Perdiste
  else if (pantalla == 5) {
    if (mouseX>(width/2-75)  && mouseX<(width/2+75) && mouseY>(height/6*5-25) && mouseY<(height/6*5+25)) {
      pantalla=0;
    }
  }
  //Historia 2
  else if (pantalla == 6) {
    if (mouseX>(width/2-75)  && mouseX<(width/2+75) && mouseY>(height/6*5-25) && mouseY<(height/6*5+25)) {
      pantalla=0;
    }
  }
  //Historia 3
  //Bifurcación historia 3 ---- Martín / Fran y Agus

  //Paso pantalla 7 a 8 u 11  
  else if (pantalla == 7) {
    if (mouseX>(width/4-100) && mouseX<(width/4+100) && mouseY>(height/4*3-22.5) && mouseY<(height/4*3+22.5)) { //--------Hablar con Martín
      pantalla=8;
    } else if (mouseX>(width/4*3-100) && mouseX<(width/4*3+100) && mouseY>(height/4*3-22.5) && mouseY<(height/4*3+22.5)) {//--------Hablar con Fran y Agus
      pantalla=11;
    }
  }
  //Historia Martín
  //Paso pantalla 8 a 9-------Continuar
  else if (pantalla == 8) {
    if (mouseX>(width-80-50) && mouseX<(width-80+50) && mouseY>27.5 && mouseY<52.5) { //Continuar
      pantalla=9;
    }
  }
  //Paso pantalla 9 a 10-------Continuar
  else if (pantalla == 9) {
    if (mouseX>(width-80-50) && mouseX<(width-80+50) && mouseY>27.5 && mouseY<52.5) { //Continuar
      pantalla=10;
    }
  }
  //Reinicio historia Martín
  else if (pantalla == 10) {
    if (mouseX>(width/2-75)  && mouseX<(width/2+75) && mouseY>(height/6*5-25) && mouseY<(height/6*5+25)) {
      pantalla=0;
    }
  }

  //Bifurcación historia 3 ---- Fran y Agus

  //Intentar hablar (o no)
  else if (pantalla == 11) {
    if (mouseX>(width/4-100) && mouseX<(width/4+100) && mouseY>(height/4*3-22.5) && mouseY<(height/4*3+22.5)) {
      pantalla=12;
    }
    if ( mouseX>(width/4*3-100) && mouseX<(width/4*3+100) && mouseY>(height/4*3-22.5) && mouseY<(height/4*3+22.5)) {   /////Si la activo, me saltea las otras pantallas
      pantalla=0;
    }
  }

  //Continuar
  else if (pantalla == 12) {
    if (mouseX>(width-80-50) && mouseX<(width-80+50) && mouseY>27.5 && mouseY<52.5) {
      pantalla=13;
    }
  }
  //Ver o no el futuro----Créditos
  else if (pantalla == 13) {
    if (mouseX>(width/4*3-100) && mouseX<(width/4*3+100) && mouseY>(height/4*3-22.5) && mouseY<(height/4*3+22.5)) {
      pantalla=17;
    }
    if (mouseX>(width/4-100) && mouseX<(width/4+100) && mouseY>(height/4*3-22.5) && mouseY<(height/4*3+22.5)) {
      pantalla=14;
    }
  }

  //Continuar
  else if (pantalla == 14) {
    if (mouseX>(width-80-50) && mouseX<(width-80+50) && mouseY>27.5 && mouseY<52.5) {
      pantalla=15;
    }
  }
  //Continuar
  else if (pantalla == 15) {
    if (mouseX>(width-80-50) && mouseX<(width-80+50) && mouseY>27.5 && mouseY<52.5) { //Se me saltea esta pantalla
      pantalla=16;
    }
  }
  //Dibujo
  //Continuar
  else if (pantalla == 16) {
    if (mouseX>(width-80-50) && mouseX<(width-80+50) && mouseY>27.5 && mouseY<52.5) { //Se me saltea esta pantalla
      pantalla=17;
    }
  }
  //Créditos
  else if (pantalla == 17) {
    if (mouseX>(width/2-75)  && mouseX<(width/2+75) && mouseY>(height/6*5-25) && mouseY<(height/6*5+25)) {
      pantalla=0;
    }
  }
}
