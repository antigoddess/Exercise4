LetterGenerator lg;
String input = "abcdefghijklmnopgrstuvwxyz";

void setup() {
  size(820, 480);
  lg = new LetterGenerator(input, 0, height/2);
  strokeWeight(3);
}

void draw() {
  background(127);
  fill(255, 255, 255);
  lg.run();
}

class Letter {

  int size = 20;
  int[] s;
  PVector position;
  PVector[] vertices;
  float spread = 0.2;
  float x;
  float y;

  Letter(int[] _s, float _x, float _y) {
    s = _s;
    x = _x;
    y = _y;
  }

  void update() {
  }

  void draw() {
    stroke(127 + random(127), 127 + random(127), 127 + random(127));
    if (s[0]==1) line(x, y, x, y+size);
    if (s[1]==1) line(x, y, x+size, y);
    if (s[2]==1) line(x+size, y, x+size, y + size);
    if (s[3]==1) line(x+size, y + size, x+size, y + size * 2);
    if (s[4]==1) line(x+size, y + size * 2, x, y + size * 2);
    if (s[5]==1) line(x, y + size * 2, x, y + size);
    if (s[6]==1) line(x, y + size, x + size, y + size);
  }

  void run() {
    update();
    draw();
  }
}




class LetterGenerator {

  int[] a = {1, 1, 1, 1, 0, 1, 1}, 
  b = {1, 0, 0, 1, 1, 1, 1}, 
  c = {1, 1, 0, 0, 1, 1, 0}, 
  d = {0, 0, 1, 1, 1, 1, 1}, 
  e = {1, 1, 0, 0, 1, 1, 1}, 
  f = {1, 1, 0, 0, 0, 1, 1}, 
  g = {1, 1, 0, 1, 1, 1, 0},
  h = {1, 0, 1, 1, 0, 1, 1},
  i = {0, 1, 0, 0, 1, 1, 0},
  j = {0, 1, 0, 1, 1, 0, 0},
  k = {1, 0, 1, 0, 0, 1, 1},
  l = {1, 0, 0, 0, 1, 1, 0},
  m = {0, 1, 0, 1, 0, 1, 1},
  n = {0, 0, 0, 1, 0, 1, 1},
  o = {0, 0, 0, 1, 1, 1, 1},
  p = {1, 1, 1, 0, 0, 1, 1},
  q = {1, 1, 1, 1, 0, 0, 1},
  r = {0, 0, 0, 0, 0, 1, 1},
  s = {1, 1, 0, 1, 1, 0, 1},
  t = {1, 0, 0, 0, 1, 1, 1},
  u = {1, 0, 1, 1, 1, 1, 0},
  v = {0, 0, 0, 1, 1, 1, 0},
  w = {1, 0, 1, 0, 1, 0, 1},
  _x = {0, 1, 0, 1, 1, 1, 0},
  _y = {1, 0, 1, 1, 1, 0, 1},
  z = {0, 1, 0, 0, 1, 0, 1}
  ;
  ArrayList<Letter> letters;
  PVector position;
  float offset = 30;

  LetterGenerator(String input, float x, float y) {
    initShapes();
    position = new PVector(x, y);
    letters = new ArrayList<Letter>();

    for (int _=0; _<input.length(); _++) {     
      char ch = input.charAt(_);

      float px = position.x + ((_+1) * offset);
      float py = position.y - 10;

      switch(ch) {
      case 'a':
        letters.add(new Letter(a, px, py));
        break;
      case 'b':
        letters.add(new Letter(b, px, py));
        break;
      case 'c':
        letters.add(new Letter(c, px, py));
        break;
      case 'd':
        letters.add(new Letter(d, px, py));
        break;
      case 'e':
        letters.add(new Letter(e, px, py));
        break;
      case 'f':
        letters.add(new Letter(f, px, py));
        break;
      case 'g':
        letters.add(new Letter(g, px, py));
        break;
      case 'h':
        letters.add(new Letter(h, px, py));
        break;
      case 'i':
        letters.add(new Letter(i, px, py));
        break;
      case 'j':
        letters.add(new Letter(j, px, py));
        break;
      case 'k':
        letters.add(new Letter(k, px, py));
        break;
      case 'l':
        letters.add(new Letter(l, px, py));
        break;
      case 'm':
        letters.add(new Letter(m, px, py));
        break;
      case 'n':
        letters.add(new Letter(n, px, py));
        break;
      case 'o':
        letters.add(new Letter(o, px, py));
        break;
      case 'p':
        letters.add(new Letter(p, px, py));
        break;
      case 'q':
        letters.add(new Letter(q, px, py));
        break;
      case 'r':
        letters.add(new Letter(r, px, py));
        break;
      case 's':
        letters.add(new Letter(s, px, py));
        break;
      case 't':
        letters.add(new Letter(t, px, py));
        break;
      case 'u':
        letters.add(new Letter(u, px, py));
        break;
      case 'v':
        letters.add(new Letter(v, px, py));
        break;
      case 'w':
        letters.add(new Letter(w, px, py));
        break;
      case 'x':
        letters.add(new Letter(_x, px, py));
        break;
      case 'y':
        letters.add(new Letter(_y, px, py));
        break;
      case 'z':
        letters.add(new Letter(z, px, py));
        break;
      }
    }
  }

  void initShapes() {
  }

      void update() {
        //
      }

      void draw() {
        background(255, 255, 255);
    for (Letter letter : letters) {
      letter.run();
    }
  }

  void run() {
    update();
    draw();
  }
}
