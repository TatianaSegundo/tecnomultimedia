/*
TP n°2 : Créditos
Comisión: 2
Alumna: Tatiana Dulce Itatí Segundo
Legajo: 88878/8
Película: 9
*/
PFont fuente; //Texto
PImage fondo;
PImage c1;
PImage c2;
PImage c3;
PImage c4;
PImage c5;
PImage c6;
PImage c7;
PImage c8;
PImage f1;
PImage f2;
PImage f3;
PImage f4;
PImage f5;
PImage f6;
PImage f7;
PImage f8;
PImage boton;
char a, b, c, d, e, g, h, i, j, k, l, m, n, o, p, r, s, t, u, y; 
//Movimiento texto en X por pantalla:
float posDirected, posShane;
float posScreenplay, posPamela;
float posStory, posShane2;
float posProd, posTim;
float posCoP,posJinko;
int pantalla,  tiempo;

void setup() {
  size(1280, 720);
  textAlign(CENTER, CENTER);

  //Tipografía:
  fuente = loadFont("DemonNight-48.vlw");
  textFont(fuente);

  //Imagenes inicio:
 
  c1= loadImage("c10.jpg");
  c2= loadImage("c11.jpg");
  c3= loadImage("c12.jpg");
  c4= loadImage("c13.jpg");
  c5= loadImage("c14.jpg");
  c6= loadImage("c15.jpg");
  c7= loadImage("c16.jpg");
  c8= loadImage("c17.jpg");
  f1 = loadImage("fondo1.jpg");
  f2 = loadImage("fondo2.jpg");
  f3 = loadImage("fondo3.jpg");
  f4 = loadImage("fondo4.jpg");
  f5 = loadImage("fondo5.jpg");
  f6 = loadImage("fondo6.jpg");
  f7 = loadImage("fondo7.jpg");
  f8 = loadImage("fondo8.jpg");
  boton = loadImage("9 boton.png");
  
  
  //Imagen fondo principal:
  
  fondo = loadImage("FondoCreditos.jpg");

  //Letras créditos:
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

  //Movimientos:
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
  tiempo=0;
  }
void draw() {
  
 //Fondos inicio:
 
  if(millis() - tiempo <250){
   image(c1,0,0);
  }
  else if(millis() - tiempo <500){
   image(c2,0,0);
  }
  else if(millis() - tiempo <750){
   image(c3,0,0);
  }
  else if(millis() - tiempo <1000){
   image(c4,0,0);
  }
  else if(millis() - tiempo <1250){
   image(c5,0,0);
  }
  else if(millis() - tiempo <1500){
   image(c6,0,0);
  }
  else if(millis() - tiempo <1750){
    image(c7,0,0);
  }
  else if(millis() - tiempo <2000){
  image(c8,0,0);
  }  
  else if(millis() - tiempo <2250){
   background(0);
  } 
  else if(millis() - tiempo <2500){
   image(f1,0,0);
  }
  
  else if(millis() - tiempo <3000){
   image(f2,0,0);
  }
  else if(millis() - tiempo <3250){
   image(f3,0,0);
  }
  else if(millis() - tiempo <3500){
   image(f4,0,0);
  }
  else if(millis() - tiempo <3750){
   image(f5,0,0);
  }
  else if(millis() - tiempo <4000){
   image(f6,0,0);
  }
  else if(millis() - tiempo <4250){
   image(f7,0,0);
  }
  else if(millis() - tiempo <4500){
   image(f8,0,0);
  }  
 //Fondo principal:
  if(millis() - tiempo >4750){
  image(fondo, 0, 0);
  }

  //Texto (propiedades):
  textSize(40);
  fill(255, 180);

  //Creditos:
  
  //Directed by

 if(millis() - tiempo >4750){
  posDirected=posDirected-2;
  posShane=posShane-1.8;
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
  }
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
  text(s, width/2-95, posShane2-7);
  text(h, width/2-75, posShane2-13);
  text(a, width/2-55, posShane2-20);
  text(n, width/2-35, posShane2-14);
  text(e, width/2-15, posShane2-26);

  text(a, width/2+25, posShane2-8);
  text(c, width/2+45, posShane2-12);
  text(k, width/2+65, posShane2-18);
  text(e, width/2+85, posShane2-10);
  text(r, width/2+105, posShane2-24);
  }
  if (posStory < pantalla && posShane2 < pantalla) {
  posProd=posProd-2;
  posTim=posTim-1.8;
  
  //Produced by
  text(p,width/2-90, posProd-23);
  text(r,width/2-70, posProd-12);
  text(o,width/2-50, posProd-8);
  text(d,width/2-30, posProd-17);
  text(u,width/2-10, posProd-9);
  text(c,width/2+10, posProd-13);
  text(e,width/2+30, posProd-15);
  text(d,width/2+50, posProd-14);
  
  text(b,width/2+90,posProd-23);
  text(y,width/2+110,posProd-18);
  
  //Tim Burton
  text(t,width/2-80,posTim-12);
  text(i,width/2-60,posTim-25);
  text(m,width/2-40,posTim-20);
  
  text(b,width/2,posTim-23);
  text(u,width/2+20,posTim-15);
  text(r,width/2+40,posTim-26);
  text(t,width/2+60,posTim-14);
  text(o,width/2+80,posTim-30);
  text(n,width/2+100,posTim-17);  
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
  if (posCoP < pantalla && posJinko < pantalla) {
    background(0);
    
  }
 //-----------------------------------------------------------------
  
 if(millis() - tiempo >4750 && millis() <7000|| millis() - tiempo >9750 && millis() - tiempo <12250 || millis() - tiempo >15000 && millis() - tiempo <17500 || millis() - tiempo >20000 && millis() - tiempo <22750 || millis() - tiempo >25000 && millis() - tiempo <28000){
 //Rayo1
 noFill();
 strokeWeight(random(0.1,7));
 stroke(#E5FFEB,100);
 beginShape();
 vertex(580,520);
 vertex(505,460);
 vertex(510,400);
 vertex(500,340);
 vertex(500,390);
 vertex(460,420);
 vertex(440,380);
 vertex(430,280);
 vertex(420,320);
 vertex(380,340);
 vertex(360,360);
 vertex(340,220);
 vertex(300,340);
 vertex(280,370);
 vertex(240,360);
 vertex(220,380);
 vertex(160,300);
 vertex(120,420);
 endShape();
 //________________________________________________________________
 //Rayo2
 noFill();
 strokeWeight(random(0.1,7));
 stroke(#E5FFEB,100);
 beginShape();
 vertex(720,520);
 vertex(780,460);
 vertex(800,500);
 vertex(820,440);
 vertex(860,420);
 vertex(920,360);
 vertex(1000,400);
 vertex(1040,340);
 vertex(1060,360);
 vertex(1100,340);
 vertex(1160,240);
 vertex(1190,300);
 vertex(1150,380);
 vertex(1180,460);
 vertex(1200,480);
 endShape();
 //________________________________________________________________
 //Rayo3
 noFill();
 strokeWeight(random(0.1,7));
 stroke(#E5FFEB,100);
 beginShape();
 vertex(700,500);
 vertex(710,440);
 vertex(730,420);
 vertex(720,380);
 vertex(740,360);
 vertex(700,300); 
 vertex(740,280);
 vertex(700,180);
 vertex(740,230);
 vertex(760,280);
 vertex(800,220);
 vertex(750,360);
 endShape();
  }
  
 //Botón:
 noStroke();
 fill(#084315);
 circle(1240,680,40);
 //Imagen botón:
  image(boton,1215,670);
 //________________________________________________________________  
 println(millis());
 println(millis()/1000);
 }

 void mouseClicked(){
 
 if(dist(mouseX,mouseY,1240,680)< 20){
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
    tiempo=millis();
 } 
 }
