//End Credits "9"

//Texto
PFont fuente;
//Imagen: Fondo
PImage fondo;

//Creditos texto
char a,b,c,d,e,g,h,i,j,k,l,m,n,o,p,r,s,t,y;
//Movimiento texto en X
//float posX;
float posDirected,posShane;
//Rayos
float inicioRayo;
float finRayo;

void setup(){
  size(1280,720);
  textAlign(CENTER, CENTER);
  
  //Tipografía
  fuente = loadFont("DemonNight-48.vlw");
  textFont(fuente);
   
  //Imagen fondo
  fondo = loadImage("FondoCreditos.jpg");
  
  //Letras créditos
  a = 'A';
  b = 'B';
  c = 'C';
  d = 'D';
  e = 'E';
  g = 'G';
  h = 'H';
  i = 'I';
  j = 'J';
  k = 'K';
  l = 'L';
  m = 'M';
  n = 'N';
  o = 'O';
  p = 'P';
  r = 'R';
  s = 'S';
  t = 'T';
  y = 'Y';

  //Movimiento de letras
  //posX=640;
  posDirected=520;
  posShane=520;
}
void draw(){
  
  //Fondo
  image(fondo,-1,-1);
  
  //Texto
  textSize(40);
  fill(255,200);

  /*Guia/Prueba de ubicación
  text('A',640,520-frameCount); /Puedo hacerlo más ágil con a---funciona igual
  text(a,posX,posY);
  */
  
  //Creditos
  
  
  //Directed by
  text(d,width/2-100,posDirected-18);
  text(i,width/2-80,posDirected-30);
  text(r,width/2-60,posDirected-28);
  text(e,width/2-40,posDirected-15);
  text(c,width/2-20,posDirected-26);
  text(t,width/2,posDirected-34);
  text(e,width/2+20,posDirected-45);
  text(d,width/2+40,posDirected-32);
  
  text(b,width/2+80,posDirected-36);
  text(y,width/2+100,posDirected-22);
  
  //Shane Acker
  text(s,width/2-100,posShane-18);
  text(h,width/2-80,posShane-30);
  text(a,width/2-60,posShane-28);
  text(n,width/2-40,posShane-15);
  text(e,width/2-20,posShane-26);

  text(a,width/2+20,posShane-45);
  text(c,width/2+40,posShane-32);
  text(k,width/2+60,posShane-36);
  text(e,width/2+80,posShane-22);
  text(r,width/2+100,posShane-22);
  
  
  //text( "DIRECTED BY", width/4,height/2, width/2, -frameCount);
  //text("SHANE ACKER", width/4,height/2+40, width/2,-frameCount);
  
  

  
  //-----------------------------------------------------------------
  
  /*Rayos
  strokeWeight(frameCount%5);
  stroke(255,97);
  line(*/
  //Actualizacion
  //posX=posX-0.2;
  posDirected=posDirected-2;
  posShane=posShane-1.7;
}
