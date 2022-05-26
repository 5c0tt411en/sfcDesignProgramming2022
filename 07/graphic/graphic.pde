void setup() {
    size(600, 400);
    noLoop();
    blendMode(ADD);
}

void draw() {
    background(0);
    for (int i = 0; i < 100; i++) {
        nyoro(
            int(random(10, 30)), 
            int(random(- 100, width + 100)), 
            int(random(-100, height + 100)), 
            color(random(100, 110), random(100, 180), random(100, 220)), 
            int(random(10)), 
            boolean(int(random(2)))
            );
    }
}

void nyoro(int n, int x, int y, color c, float sp, Boolean fill) {
    for (int i = 0; i < n; i++) {
        if (fill) {
            noStroke();
            fill(c, (n - i) * 255 / n);
        } else {
            noFill();
            stroke(c, (n - i) * 255 / n);
        }
        ellipse(
            x - n * i * width / 500, 
            y + 50 * cos(radians(n * i + frameCount * sp)), 
            (n - i) * 4 * noise(float(i * 10 + frameCount) / 100), 
            (n - i) * 4 * noise(float(i * 10 + frameCount) / 100)
            );
    }
}
