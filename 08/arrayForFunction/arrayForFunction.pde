int el = 200;
int[] n = new int[el];
int[] x = new int[el];
int[] y = new int[el];
float[] sp = new float[el];
color[] c = new color[el];

void setup() {
    size(1200, 800);
    for (int i = 0; i < x.length; i++) {
        n[i] = (int)random(10, 20);
        x[i] = (int)random(width);
        y[i] = (int)random(height);
        sp[i] = random(4.0);
        c[i] = color(random(100, 120), random(120, 200), random(200, 220));
    }
}

void draw() {
    background(0);
    for (int i = 0; i < x.length; i++) {
        nyoro(n[i], x[i], y[i], c[i], sp[i], true);
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
