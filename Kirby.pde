class Kirby {

  float posX, posY; //Coordenadas
  float velocidad, direccion;
  int tam;

  PImage [] kirby = new PImage[3];
  Kirby( float y_, float vel_, int tam_) {
    posX = 0;
    posY = y_;
    tam = tam_;
    velocidad = vel_;
    direccion = 1;

    for (int i = 0; i < 3; i++) {
      kirby[i] = loadImage("kirby0"+ i + ".png");
      kirby[i].resize(tam_, tam_);
    }
  }

  void mover() {
    posX+=velocidad * direccion;
    if ((posX >= width-tam) || (posX<=0)) {
      direccion = -direccion;
    }
  }
  void draw() {
    image(kirby[frameCount%3], posX, posY);
  }
}
