//Declaro objetos de la variable Boton
Boton a, b, c;
void setup() {
  size(600, 300);
  rectMode(CENTER);
  textAlign(CENTER, CENTER);
  textSize(15);
  
  //Llamo al constructor de la clase Boton
  a = new Boton(width/4, height/2, 100, 50, 0);
  b = new Boton(width/2, height/2, 150, 75, 1);
  c = new Boton(width/4*3, height/2, 100, 50, 2);
}
void draw() {
  
  //Llamo a los métodos de la clase Boton
  a.display();
  a.detectar();

  b.display();
  b.detectar();

  c.display();
  c.detectar();
} 
