Particle p;

void setup() {
    size(500, 500);
    noStroke();
    p = new Particle();
    p.x = 133.0;
    p.y = 150.0;
    p.d = 50.0;
}

void draw() {
    background(0);
    p.display();
}

class Particle {
    float x;
    float y;
    float d;
    
    void display() {
        ellipse(x, y, d, d);
    }
}
