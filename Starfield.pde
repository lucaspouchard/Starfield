let dots = [];

function setup() {
  createCanvas(500, 500);

  for (let i = 0; i < 4000; i++) {
    dots[i] = new Particle();
  }

  dots[0] = new OddballParticle();
}

function draw() {
  background(0);

  let elapsed = deltaTime / 1000;

  for (let i = 0; i < dots.length; i++) {
    dots[i].move(elapsed);
    dots[i].show();
  }
}


class Particle {
  constructor() {
    this.myX = 250;
    this.myY = 250;

    this.angle = random(TWO_PI);
    this.myspeed = random(1, 6);

    this.mycolor = color(
      random(255),
      random(255),
      random(255)
    );
  }

  move(elapsed) {
    this.angle += radians(30) * elapsed;

    this.myX += cos(this.angle) * this.myspeed;
    this.myY += sin(this.angle) * this.myspeed;
  }

  show() {
    fill(this.mycolor);
    noStroke();
    ellipse(this.myX, this.myY, 4, 4);
  }
}


class OddballParticle extends Particle {

  constructor() {
    super();
  }

  show() {
    fill(
      random(255),
      random(255),
      random(255)
    );

    noStroke();
    ellipse(this.myX, this.myY, 21, 21);
  }
}
