int cantKirby = 5;
Kirby[] kirbys = new Kirby[cantKirby];
void setup() {
  size(500, 300);
for(int i = 0; i < kirbys.length; i++){
  kirbys[i] = new Kirby (random(0, height-25),random((0.5),3),random(30,50));
}
}

void draw() {
  background(0);
  for (int i =0; i < kirbys.length; i++){

kirbys[i].draw();
kirbys[i].mover();

 

}
}
