//Alumna: Tatiana Dulce Itatí Segundo
//https://youtu.be/C4Lb4PYml98 (Disculpe los 3 minutos, pero es el mejor intento)
/*Las líneas comentadas de color, son otra opción en la que trabajé los colores. Dejé la configuración por defecto pero es posible ver mi trabajo con la primer versión, en la que establecí los
 límites de HSB en (360,100,100); vale aclarar, que el uso del color acá no es exactamente igual, ya que con la versión final jugué un poco más con el brillo y varié un poco los colores.*/
int num;
float rMap;

void setup() { 
  size(700, 900);
  ellipseMode(CENTER);
  colorMode(HSB);
  //colorMode(HSB, 360, 100, 100);
  num = 1;
  smooth();
}
void draw() {

  //Puerta:

  background(0, 0, 250);
  noFill();
  stroke(0, 0, 220);
  //stroke(0, 0, 90);
  strokeWeight(1);
  rect(100, 100, 500, 700);
  fill(0, 0, 200);
  //fill(0, 0, 70);
  circle(100, height/2, 100);

  //Ilusión:

  noStroke();
  if (dist(mouseX, mouseY, 100, height/2)<50) {
    for (int i = 2000; i > 0; i-=2000/num) {
      for ( int iRell = 0; iRell < 10; iRell++) {
        rMap = map(iRell*i/5, 0, 2000, 0, 1);
        // color inicio = color(249, 99, 85);
        //color fin = color(321, 99, 85);
        color inicio = color(180, 255, 200);
        color fin = color(205, 255, 235);
        fill(lerpColor(inicio, fin, rMap));

        if (key == 'a') {
          rMap = map(iRell*i/5, 0, 2000, 1, 0);
          fill(lerpColor(inicio, fin, rMap));
        } else if ( key == 'b') {
          //fill(lerpColor(color(360, 99, 99), color(180, 99, 99), rMap));
          fill(lerpColor(color(255, 255, 255), color(127, 255, 255), rMap));
        }

        circle(width/2, height/2-80, i-iRell*4);
      }
    }
    if (num<50) {
      num++;
    }
    println(num);
  }
}
//Reset:

void keyPressed() {
  if (key== 'r') {
    num =1;
  }
}
