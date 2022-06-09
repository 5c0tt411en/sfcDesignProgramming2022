int n = 10;

Particle[] p = new Particle[n];

void setup() {
    size(500, 500);
    noStroke();
    for (int i = 0; i < n; i++) {
        float d = random(10, 30);
        p[i] = new Particle(
            random(d / 2, width - d / 2), 
            random(d / 2, height - d / 2), 
            d, 
            random(1.0, 10.0), 
            random(1.0, 10.0)
            );
    }
}

void draw() {
    background(0);
    for (int i = 0; i < n; i++) {
        p[i].update();
        p[i].display();
    }
}
