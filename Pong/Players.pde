class Players {
  float x;
  float y;
  float w;
  float h;
  float speedY;
  float speedX;
  color c;

  //Constructor
  Players(float tempX, float tempY, float tempW, float tempH) {
    x = tempX;
    y = tempY;
    w = tempW;
    h = tempH;
    speedY = 0;
    speedX = 0;
    c=(255);
  }

  Players PlayerRight;
  Players PlayerLeft;

  void Move() {
    y += speedY;
    x += speedX;
  }

  void Display() {
    fill(c);
    rect(x-w/2, y-h/2, w, h);
  }
}
