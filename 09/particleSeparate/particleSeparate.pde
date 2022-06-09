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
