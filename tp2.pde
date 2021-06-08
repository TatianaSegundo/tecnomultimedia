//End Credits "9"

PFont fuente; //Texto
PImage fondo;//Imagen: Fondo
char a, b, c, d, e, g, h, i, j, k, l, m, n, o, p, r, s, t, u, y; //Creditos texto
//Movimiento texto en X por pantalla
float posDirected, posShane;
float posScreenplay, posPamela;
float posStory, posShane2;
float posProd, posTim;
float posCoP,posJinko;
int pantalla;

void setup() {
  size(1280, 720);
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
  u = 'U';
  y = 'Y';

  //Movimiento de letras
  //posX=640;
  posDirected=520;
  posShane=540;
  posScreenplay=520;
  posPamela=540;
  posStory=520;
  posShane2=540;
  posProd=520;
  posTim=540;
  posCoP=520;
  posJinko=540;
  pantalla=0;
}
void draw() {

  //Fondo
  image(fondo, -1, -1);

 //Botón
  //fill(#39EA63,170);
  //circle(1240,680,40);

  //Texto
  textSize(40);
  fill(255, 180);
  
  /*Guia/Prueba de ubicación
   text('A',640,520-frameCount); /Puedo hacerlo más ágil con a---funciona igual
   text(a,posX,posY);
   */

  //Creditos


  //Directed by
  text(d, width/2-100, posDirected-18);
  text(i, width/2-80, posDirected-30);
  text(r, width/2-60, posDirected-28);
  text(e, width/2-40, posDirected-15);
  text(c, width/2-20, posDirected-26);
  text(t, width/2, posDirected-34);
  text(e, width/2+20, posDirected-45);
  text(d, width/2+40, posDirected-32);

  text(b, width/2+80, posDirected-36);
  text(y, width/2+100, posDirected-22);

  //Shane Acker
  text(s, width/2-100, posShane-18);
  text(h, width/2-80, posShane-30);
  text(a, width/2-60, posShane-28);
  text(n, width/2-40, posShane-15);
  text(e, width/2-20, posShane-26);

  text(a, width/2+20, posShane-45);
  text(c, width/2+40, posShane-32);
  text(k, width/2+60, posShane-36);
  text(e, width/2+80, posShane-22);
  text(r, width/2+100, posShane-22);

  if (posDirected < pantalla && posShane < pantalla) {

  posScreenplay=posScreenplay-2;
  posPamela=posPamela-1.8;
  //Screenplay by
  text(s, width/2-120, posScreenplay-32);
  text(c, width/2-100, posScreenplay-37);
  text(r, width/2-80, posScreenplay-40);
  text(e, width/2-60, posScreenplay-32);
  text(e, width/2-40, posScreenplay-34);
  text(n, width/2-20, posScreenplay-17);
  text(p, width/2, posScreenplay-28);
  text(l, width/2+20, posScreenplay-23);
  text(a, width/2+40, posScreenplay-32);
  text(y, width/2+60, posScreenplay-15);

  text(b, width/2+100, posScreenplay-23);
  text(y, width/2+120, posScreenplay-34);

  //Pamela Pettler
  text(p,width/2-120,posPamela-25);
  text(a,width/2-100,posPamela-15);
  text(m,width/2-80,posPamela-13);
  text(e,width/2-60,posPamela-27);
  text(l,width/2-40,posPamela-15);
  text(a,width/2-20,posPamela-22);
  
  text(p,width/2+20,posPamela-32);
  text(e,width/2+40,posPamela-21);
  text(t,width/2+60,posPamela-15);
  text(t,width/2+80,posPamela-31);
  text(e,width/2+100,posPamela-28);
  text(r,width/2+120,posPamela-31);
  
  }
  if (posScreenplay < pantalla && posPamela < pantalla) {
  posStory=posStory-2;
  posShane2=posShane2-1.8;
  //Story by
  text(s,width/2-60,posStory-12);
  text(t,width/2-40,posStory-15);
  text(o,width/2-20,posStory-10);
  text(r,width/2,posStory-23);
  text(y,width/2+20,posStory-8);
  
  text(b,width/2+60,posStory-5);
  text(y,width/2+80,posStory-3);
  
  //Shane Acker
  text(s, width/2-100, posShane2-7);
  text(h, width/2-80, posShane2-13);
  text(a, width/2-60, posShane2-20);
  text(n, width/2-40, posShane2-14);
  text(e, width/2-20, posShane2-26);

  text(a, width/2+20, posShane2-8);
  text(c, width/2+40, posShane2-12);
  text(k, width/2+60, posShane2-18);
  text(e, width/2+80, posShane2-10);
  text(r, width/2+100, posShane2-24);
  }
  if (posStory < pantalla && posShane2 < pantalla) {
  posProd=posProd-2;
  posTim=posTim-1.8;
  //Produced by
  text(p,width/2-100, posProd-23);
  text(r,width/2-80, posProd-12);
  text(o,width/2-60, posProd-8);
  text(d,width/2-40, posProd-17);
  text(u,width/2-20, posProd-9);
  text(c,width/2, posProd-13);
  text(e,width/2+20, posProd-15);
  text(d,width/2+40, posProd-14);
  
  text(b,width/2+80,posProd-23);
  text(y,width/2+100,posProd-18);
  
  //Tim Burton
  text(t,width/2-100,posTim-12);
  text(i,width/2-80,posTim-25);
  text(m,width/2-60,posTim-20);
  
  text(b,width/2-20,posTim-23);
  text(u,width/2,posTim-15);
  text(r,width/2+20,posTim-26);
  text(t,width/2+40,posTim-14);
  text(o,width/2+60,posTim-30);
  text(n,width/2+80,posTim-17);  
  }
  if (posProd < pantalla && posTim < pantalla) {
  posCoP=posCoP-2;
  posJinko=posJinko-1.8;
  //Co-Producer
  text(c,width/2-100,posCoP-23);
  text(o,width/2-80,posCoP-22);
  text('-',width/2-60,posCoP-13);
  text(p,width/2-40,posCoP-10);
  text(r,width/2-20,posCoP-15);
  text(o,width/2,posCoP-20);
  text(d,width/2+20,posCoP-8);
  text(u,width/2+40,posCoP-22);
  text(c,width/2+60,posCoP-25);
  text(e,width/2+80,posCoP-16);
  text(r,width/2+100,posCoP-19);
  //Jinko Gotoh
  text(j,width/2-100,posJinko-14);
  text(i,width/2-80,posJinko-22);
  text(n,width/2-60,posJinko-31);
  text(k,width/2-40,posJinko-18);
  text(o,width/2-20,posJinko-15);
  
  text(g,width/2+20,posJinko-27);
  text(o,width/2+40,posJinko-13);
  text(t,width/2+60,posJinko-25);
  text(o,width/2+80,posJinko-19);
  text(h,width/2+100,posJinko-14);
  }
 
  //-----------------------------------------------------------------

  posDirected=posDirected-2;
  posShane=posShane-1.8;
}
 void mouseMoved(){
  //Botón
  //if(dist(mouseX,mouseY,1240,680)< 20){
 
 noFill();
 strokeWeight(random(0.1,3));
 stroke(#E5FFEB,100);
 beginShape();
 vertex(580,520);
 vertex(460,420);
 vertex(440,380);
 vertex(420,320);
 vertex(380,340);
 vertex(360,360);
 vertex(300,380);
 vertex(240,360);
 vertex(220,380);
 vertex(180,370);
 vertex(120,420);

 
 endShape();
  }
