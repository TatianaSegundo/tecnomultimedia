Kirby a, b, c, d, e;
void setup() {
  size(500, 300);

  a = new Kirby(10, 1.3, 40);
  b = new Kirby(70, 2, 25);
  c = new Kirby(110, 1, 50);
  d = new Kirby(170, 0.7, 70);
  e = new Kirby(250, 1.7, 30);
}

void draw() {
  background(0);
  a.draw();
  a.mover();
  b.draw();
  b.mover();
  c.draw();
  c.mover();
  d.draw();
  d.mover();
  e.draw();
  e.mover();
}
