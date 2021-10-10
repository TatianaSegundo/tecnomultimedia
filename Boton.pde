class Boton {

  //CAMPO (variables) #Propiedades
  float posX, posY, tamX, tamY;
  int IDBoton;
  color estadoBoton;

  //CONSTRUCTOR ("Setup" de mi clase. Los valores iniciales)
  Boton(float x_, float y_, float tamX_, float tamY_, int ID_) {
    posX = x_;
    posY = y_;
    tamX = tamX_;
    tamY = tamY_;
    IDBoton = ID_;
  }

  //MÉTODOS (funciones) #Acciones
  void detectar() {
    if (mouseX > posX - tamX/2 && mouseX < posX + tamX/2 
      &&  mouseY > posY - tamY/2 && mouseY < posY + tamY/2) {
      if (mousePressed) {
        if (IDBoton == 0) {
          estadoBoton = color(#ED00E2);
        } else if (IDBoton == 1) {
          estadoBoton = color(#A500ED);
        } else if (IDBoton == 2) {
          estadoBoton = color(#00ED2D);
        }
      } else {
        estadoBoton = color(#B4FDFF);
      }
    } else {
      estadoBoton = color(#FAFF76);
    }
  }

  void display() {
    fill(estadoBoton);
    rect(posX, posY, tamX, tamY);
    fill(0);
    text(IDBoton, posX, posY);
  }
}
