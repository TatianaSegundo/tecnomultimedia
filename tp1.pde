void setup() {
  size (900,900);
  background(0);
 }
void draw() {
  
 stroke(0);
 strokeWeight(2);

 //Terciarios
 
 //R+M
 fill(255,0,128);
 triangle(450,225,450,0,825,225);
 //R+Y
 fill(255,128,0);
 triangle(75,225,450,0,450,225);
 //B+M
 fill(128,0,255);
triangle(825,225,640,550,835,650);
 //B+C
 fill(0,128,255);
 triangle(640,550,835,650,450,900);
 //G+C
 fill(0,255,128);
 triangle(450,900,70,650,260,550);
 //G+Y
 fill(128,255,0);
 triangle(75,225,260,550,70,650);
 
 //Secundarios
 
 //Y
 fill(255,255,0);
 quad(75,225,450,225,450,450,260,550);
 //M
 fill(255,0,255);
 quad(450,225,825,225,640,550,450,450);
 //C
 fill(0,255,255);
 quad(260,550,450,450,640,550,450,900);
 
 //Primarios
 
 //R
 fill(255,0,0);
 triangle(245,325,655,325,450,450);
 //G
 fill(0,255,0);
 triangle(245,325,450,450,450,670);
 //B
 fill(0,0,255);
 triangle(450,450,655,325,450,670);

 //División Secundarios

 strokeWeight(2);

 line(245,325,75,225);
 line(655,325,825,225);
 line(450,670,450,900);
 
  
}
