/*TP°4 
 Alumna: Tatiana Segundo
 Legajo: 88878/7
 -----Hola profe! Si puedo seguir trabajando antes del límite de entrega,
 voy a tratar de dejarle una versión que al menos funcione. Estos días hice varios 
 cambios y me perdí ya,porque hace unos días logré que funcione la lógica de estados
 de  una manera que me resultó bastante cómoda, pero después metí mano para mejorarla
 y bueno, me mezclé jaja. De no lograrlo, aprovecho la instancia para que me guíe
 con lo que considere, que siempre viene bien, pero espero poder disponer de un poco
 más de tiempo estos días venideros y tener la cabeza más fría. 
 Le mando un saludo!
 */
String pantalla;
PFont fuenteBoton, fuenteCuerpo;
PImage fondo [] = new PImage [7];
void setup() {
  size(900, 600);
  pantalla = "pantalla 0";
  for (int i = 0; i< 7; i++) {
    fondo[i] = loadImage("fondo"+nf(i, 2)+".jpg");
  }
}
void draw() {

  if (pantalla== "pantalla 0") {
    //muestro pantalla cero
    image(fondo[0],0,0);
    boton(450, 460, 200, 50, 7);
    textoBoton( "Comenzar", 40, color(0), 450, 450 );
  } else if (pantalla== "pantalla 1") {
    image(fondo[1],0,0);
    //muestro pantalla uno
  } else if (pantalla== "pantalla 2") {
    //muestro pantalla dos
    image(fondo[2],0,0);
    textoBoton( "No entrar a clase", 22, color(255), 225, 450 );
    textoBoton( "Sentarte solx", 22, color(255), 450, 450 );
    textoBoton( "Ir con el chico \n que está solx", 22, color(255), 675, 450 );
  } else if (pantalla== "pantalla 3") {
    //muestro pantalla tres
    image(fondo[3],0,0);
    textoBoton( "Hablar sólo con él", 22, color(255), 225, 450 );
    textoBoton( "Hablar con los chicos de atrás", 22, color(255), 640, 450 );
  } else if (pantalla== "pantalla 4") {
    //muestro pantalla cuatro
    image(fondo[4],0,0);
  }
}

void mousePressed() {
  if (pantalla== "pantalla 0"){
    if((mouseX > 450) && (mouseX < 200) &&
    (mouseY > 460) && (mouseY < 50)) {
      pantalla = "pantalla 1";
    }
    //muestro pantalla cero
  } else if ( pantalla=="pantalla 1") {
    //muestro pantalla uno
  } else if ( pantalla=="pantalla 2") {
    //muestro pantalla dos
  } else if ( pantalla=="pantalla 3") {
    //muestro pantalla tres
  } else if ( pantalla=="pantalla 4") {
    //muestro pantalla cuatro
  }
}
