int n = 100;
Particle[] p = new Particle[n];

void setup() {
    size(500, 500);
    noStroke();
    for (int i = 0; i < p.length; i++) {
        float d = random(20.0);
        p[i] = new Particle(
            random(d / 2, width - d / 2), 
            random(d / 2, height - d / 2), 
            d, 
            random(5.0), 
            random(5.0)
            );
    }
}

void draw() {
    background(0);
    for (int i = 0; i < p.length; i++) {
        p[i].update();
        p[i].display();
    }
}

class Particle {
    float x;
    float y;
    float d;
    float vx;
    float vy;

    Particle(float _x, float _y, float _d, float _vx, float _vy) {
        x = _x;
        y = _y;
        d = _d;
        vx = _vx;
        vy = _vy;
    }

    void display() {
        ellipse(x, y, d, d);
    }
    void update() {
        x += vx;
        y += vy;
        if (x >= width - d / 2 || x <= d / 2)
            vx = -vx;
        if (y >= height - d / 2 || y <= d / 2)
            vy = -vy;
    }
}
