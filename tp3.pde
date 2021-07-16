/*Holis a quien mire el trabajo jajaj. Claramente no es un trabajo terminado, me disculpo por eso, pero me propuse seguir corrigiéndolo, ya que me falta tomar unas cuantas
decisiones, cambiar cosas y mejorar muchas otras, pero les dejo una de mis pruebas sobre el tp como un registro. (edité este archivo porque me confundí de código, subí otra
prueba que no era, pero ya está la correcta jaja)
Ya que estamos, felices vacaciones y nos vemos en unas semanas! Saludos*/
float esfX, esfY, camb1, camb2, m;
color r = color(100, 90, 90);
color a = color(100, 90, 90);
int tiempo;


void setup() {
  size(700, 800); 
  background(0); 
  colorMode(HSB, 360);
  ellipseMode(CENTER);
  esfX = width/2;
  esfY = height/2;
  smooth();
  //  camb1 = random(1,5);
  //  camb2 = random(5, 9);
  // m = map(m,width,height,0,1);
  tiempo = 0;
}

void draw() {
  for (int i =100; i < 2000; i++) {
    color cComb = lerpColor(r, a, 0.5);
    color cComb2 = lerpColor (a, r, 0.5);
    if (i%2 == 0) {
      stroke(cComb+(frameCount-=10000));
    } else {
      stroke(cComb2+(frameCount-=10000));
    }
    strokeWeight(10);
    noFill();
    // strokeWeight(random(0,9));
    ellipse( esfX, esfY-80, i+=10, i+=10);
    //Botón:
    noStroke();
    fill(0,200);
    ellipse(650, 750, 40,40);
  }
}
void mouseClicked() {


  //(dist(mouseX,mouseY,650,750,20){

  //}
}
