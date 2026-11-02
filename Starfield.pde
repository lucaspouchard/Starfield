Particle[] dots;

void setup() {
  size(500, 500);
  background(0);

  dots = new Particle[4000];

  for (int i = 0; i < dots.length; i++) {
    dots[i] = new Particle();
  }

  dots[0] = new OddballParticle();
}

void draw() {
  background(0);

  for (int i = 0; i < dots.length; i++) {
    dots[i].move();
    dots[i].show();
}
}


class Particle {

  double myX = 250;
  double myY = 250;

  double angle;
  double myspeed;

  int mycolor;

  Particle() {
    angle = Math.random() * Math.PI * 2;
    myspeed = Math.random() * 5;

    mycolor = color(
      (int)(Math.random() * 255),
      (int)(Math.random() * 255),
      (int)(Math.random() * 255)
  );
  }

  void move() {
    angle += Math.toRadians(0.5);

    myX += Math.cos(angle) * myspeed;
    myY += Math.sin(angle) * myspeed;
  }

  void show() {
    fill(mycolor);
    noStroke();
    ellipse((float)myX, (float)myY, 4, 4);
}
}


class OddballParticle extends Particle {

  OddballParticle() {
    myX = 250;
    myY = 250;
    angle = Math.random() * Math.PI * 2;
    myspeed = Math.random() * 3;
    mycolor = color(255, 0, 0);
  }

  void show() {
    fill(
      (int)(Math.random() * 255),
      (int)(Math.random() * 255),
      (int)(Math.random() * 255)
    );

    noStroke();
    ellipse((float)myX, (float)myY, 21, 21);
  }
      }
