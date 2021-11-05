/*
 TP 5 : Minijuego
 Alumnos: Aguiar, Lisangro;
 Segundo, Tatiana;
 Link de registro en Youtube: https://youtu.be/X64Hx1Lut_Q
 */
Juego juego;
void setup() {
  size(500, 500);
  juego = new Juego();
}
void draw() {
  juego.dibujarJuego(); 
  juego.actualizarJuego();
}
void keyPressed() {
  juego.mover();
  juego.reiniciar();
}
