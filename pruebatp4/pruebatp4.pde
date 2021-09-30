PImage fondo [] = new PImage [7];
int pantalla;
void setup() {
  size(900, 600); /////////Achicar a (800,600)
  rectMode(CENTER);
  noStroke();
  //arreglo de textos
  pantalla = 0;
  for (int i = 0; i< 7; i++) {
    fondo[i] = loadImage("fondo"+nf(i, 2)+".jpg");
  }
}

void draw() {

  if (pantalla == 0) {
    image(fondo[0], 0, 0);
    boton(450, 460, 200, 50, 7);
    textoBoton( "Comenzar", 40, color(0), 450, 460 );
  } else if (pantalla == 1) {
    image(fondo[1], 0, 0);
    boton(820, 40, 100, 25, 7);
    textoBoton( "Continuar", 40, color(0), 820, 40 ); //Corregir cuando achique pantalla, correr aprox 100 en x atrás
  } else if (pantalla == 2) {
    image(fondo[2], 0, 0);
    image(fondo[2], 0, 0);
    boton(225, 450, 150, 40, 7);
    textoBoton( "No entrar a clase", 22, color(0), 225, 450 );
    boton(450, 450, 150, 40, 7);
    textoBoton( "Sentarte solx", 22, color(0), 450, 450 );
    boton(675, 450, 150, 40, 7);
    textoBoton( "Ir con el chico \nque está solx", 22, color(0), 675, 450 );
  } 
  //HISTORIA 1
    else if (pantalla == 3) {//No entrás a clase
    image(fondo[3], 0, 0);
    text("Te encuentran fuera de clase y llaman a tus papás", 300, height/2);
    boton(820, 40, 100, 25, 7);
    textoBoton( "Continuar", 40, color(0), 820, 40 );
  } else if (pantalla == 4) {//Te castigan
    image(fondo[4], 0, 0);
    text("Te castigan \n Perdiste", 400, height/2);
    boton(450, 460, 200, 50, 7);
    textoBoton( "Reiniciar", 40, color(0), 450, 460 );
  } 
  //HISTORIA 2
    else if (pantalla == 5) {//Te sentás con Martín
    image(fondo[5], 0, 0);
    textoBoton( "Hablar sólo con él", 22, color(255), 225, 450 );
    textoBoton( "Hablar con los chicos de atrás", 22, color(255), 640, 450 );
  } else if (pantalla == 6) {
    image(fondo[6], 0, 0);
  }
}
void mouseClicked() {
  //Paso pantalla 0 a 1-------Comenzar
  if (pantalla == 0) {
    if (mouseX>350 && mouseX<550 && mouseY>435 && mouseY<485) { //////Acá metí la pata
      pantalla=1;
    }
  }
  //Paso pantalla 1 a 2-------Continuar
  if (pantalla == 1) {
    if (mouseX>770 && mouseX<870 && mouseY>27.5 && mouseY<52.5) {
      pantalla=2;
    }
  }
  //Paso pantalla 2 a 3-------¿Con quién me siento?
  if (pantalla == 2) {
    if (mouseX>150 && mouseX<300 && mouseY>430 && mouseY<470) {        //No entrar a clase
      pantalla=3;
    } else if (mouseX>375 && mouseX<525 && mouseY>430 && mouseY<470) {  //Sentarte solx
      pantalla=5;
    } else if (mouseX>600 && mouseX<750 && mouseY>430 && mouseY<470) {  //Sentarte solx
      pantalla=5;
    }
  }
  //Paso pantalla 3 a 4-------Te encuentran fuera del salón
  if (pantalla == 3) {
    if (mouseX>770 && mouseX<870 && mouseY>27.5 && mouseY<52.5) {
      pantalla=4;
    }
  }
  //Paso pantalla 4 a 0-------Te castigan = Perdiste
  if (pantalla == 4) {
    if (mouseX>350 && mouseX<550 && mouseY>435 && mouseY<485) { //////Acá metí la pata
      pantalla=0;
    }
  }
}

verPapel{
  
}
