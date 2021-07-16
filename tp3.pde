float esfX, esfY;
int cant,tam;
//COLOR
color vC = color(278,99,99);
color cC = color(205,99,99);
color vO = color(278,99,10);//#590086
color cO = color(205,99,10);//#004D86
color paletaA = lerpColor(vC,cC,0.1);
color paletaB = lerpColor(cC,cO,0.1);
color c1,c2,c3,c4;

void setup(){
size(700,800);
colorMode(HSB,360,100,100);
esfX=width/2;
esfY=height/2;
cant=200;
tam=100;
//COLOR
c1 = color(278,99,99);
c2 = color(278,99,10);
c3 = color(205,99,99);
c4 = color(205,99,10);
}

void draw(){
color vC = color(278,99,99);
color cC = color(205,99,99);
color vO = color(278,99,10);//#590086
color cO = color(205,99,10);//#004D86
color paletaA = lerpColor(vC,cC,0.1);
color paletaB = lerpColor(cC,cO,0.1);
  for(int a=cant; a>0; a--){
    fill(paletaA);
   ellipse(esfX,esfY,a*tam,a*tam);
 
  }
  noLoop();
}

void mouseMoved(){
 if(mouseX<width && mouseY<height){
   esfX=mouseX+random(0,5);
   esfY=mouseY+random(0,5);
 }
}
