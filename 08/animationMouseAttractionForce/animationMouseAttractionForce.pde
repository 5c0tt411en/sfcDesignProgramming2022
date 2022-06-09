int n = 100;
int[] x = new int[n];
int[] y = new int[n];
int[] d = new int[n];
int[] vx = new int[n];
int[] vy = new int[n];
color[] c = new color[n];

void setup() {
    size(700, 700);
    for (int i = 0; i < x.length; i++) {
        d[i] = (int)random(2, 20);
        x[i] = (int)random(d[i] / 2, width - d[i] / 2);
        y[i] = (int)random(d[i] / 2, height - d[i] / 2);
        while (vx[i] == 0)
            vx[i] = (int)random(-5, 5);
        while (vy[i] == 0)
            vy[i] = (int)random(-5, 5);
        c[i] = color(random(100, 140), random(150, 220), random(150, 250));
    }
    textSize(10);
}

void draw() {
    background(0);
    for (int i = 0; i < x.length; i++) {
        mouseAttractionForce(i);
        connect(i);
        fill(c[i]);
        stroke(255);
        ellipse(x[i], y[i], d[i], d[i]);
        info(i);
    }
}

void info(int i) {
    String s;
    s = "position: (" + x[i] + ", " + y[i] + ")";
    s += '\n' + "velocity: (" + vx[i] + ", " + vy[i] + ")";
    s += '\n' + "diameter: " + d[i];
    s += '\n' + "color: (" + red(c[i]) + ", " + green(c[i]) + ", " + green(c[i]) + ")";
    fill(255, 100);
    text(s, x[i] + 20, y[i] + 20);
}

void connect(int i) {
    stroke(c[i]);
    for (int j = 0; j < n; j++) {
        if (i != j && i < j) {
            if (dist(x[i], y[i], x[j], y[j]) <= 100)
                line(x[i], y[i], x[j], y[j]);
        }
    }
}

void mouseAttractionForce(int i) {
    if (dist(mouseX, mouseY, x[i], y[i]) <= 200) {
        vx[i] += (mouseX - x[i]) >= 0 ? 1 : -1;
        vy[i] += (mouseY - y[i]) >= 0 ? 1 : -1;
        x[i] += vx[i];
        y[i] += vy[i];
    }
}
