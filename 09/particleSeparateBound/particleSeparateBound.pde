int n = 200;
Particle[] p = new Particle[n];

void setup() {
    size(500, 500);
    noStroke();
    for (int i = 0; i < p.length; i++) {
        float d = random(3.0, 10.0);
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
        for (int j = 0; j < p.length; j++) {
            if (i != j)
                p[i].bound(p[j].d, p[j].x, p[j].y);
        }
    }
}
