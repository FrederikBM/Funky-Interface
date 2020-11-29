public class Button {
  int posX, posY;
  int w, h;
  String text;
  Action a;
  PApplet p;

  Button(int x, int y, int lx, int hy, String a, PApplet p) {
    posX = x;
    posY = y;
    w = lx; 
    h = hy;
    text = a;
    this.p = p;
  }

  void addAction(Action a) {
    this.a=a;
  }

  void display() {
    p.fill(255);
    p.rect(posX, posY, w, h);
    p.fill(0);
    p.text(text, posX+(w/2), posY+(h/2));
  }

  void click() {
    if ((p.mouseX>=posX)&&(p.mouseX<=posX+w)&&(p.mouseY>=posY)&&(p.mouseY<=posY+h)) {
      a.execute();
    }
  }
}
