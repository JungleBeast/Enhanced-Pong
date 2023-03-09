class Knap {
  int x;
  int y;
  int h;
  int w;

  boolean Pressed = false;

  Knap(int xin, int yin, int win, int hin) {
    x= xin;
    y= yin;
    w= win;
    h= hin;
  }


  void Click() {
    if (mouseX > x && mouseX < x + w &&
      mouseY > y && mouseY < y + h) {

      Pressed = true;
    }
  }

  void Release() {
    Pressed = false;
  }

  void Display() {
    fill(17, 24, 33);
    rect(x-10, y-10, w+20, h+20);
    fill(35, 54, 87);
    rect(x, y, w, h);

    if (mouseX > x && mouseX < x + w &&
      mouseY > y && mouseY < y + h) {
      fill(78, 99, 130);
      rect(x, y, w, h);
    }
    textSize(50);
    fill(255);
    text("START", x+30, y+60);
  }
}
