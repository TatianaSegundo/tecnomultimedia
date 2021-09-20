void papel(float xA,float xB, float y,  color c){
fill(c);
  beginShape();
  //I SUP
  vertex(xA, y);
  vertex(xA-4, y+7);
  vertex(xA+10, y+15);
  vertex(xA-8, y+23);
  vertex(xA+3, y+37);
  vertex(xA-2, y+46);
  vertex(xA+8, y+57);
  vertex(xA-5, y+66);
  vertex(xA+2, y+75);
  vertex(xA-3, y+83);
  vertex(xA+12, y+90);
  //I INF
  vertex(xA, y*2);
  //D INF
  vertex(xB,y*2);
  vertex(xB+10, y+90);
  vertex(xB-4, y+83);
  vertex(xB+2, y+75);
  vertex(xB-6, y+66);
  vertex(xB+10, y+55);
  vertex(xB-3, y+48);
  vertex(xB+7, y+37);
  vertex(xB-5, y+25);
  vertex(xB+5, y+15);
  vertex(xB-3, y+7);
  //D SUP
  vertex(xB, y);
  endShape(CLOSE);

}
