Particle p;

void setup() {
    size(500, 500);
    noStroke();
    p = new Particle();
    p.x = 133.0;
    p.y = 150.0;
    p.d = 50.0;
    p.vx = 5.0;
    p.vy = 2.0;
}

void draw() {
    background(0);
    p.update();
    p.display();
}

class Particle {
    float x;
    float y;
    float d;
    float vx;
    float vy;
    
    void display() {
        ellipse(x, y, d, d);
    }
    void update() {
        x += vx;
        y += vy;
    }
}
