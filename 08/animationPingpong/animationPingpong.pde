int n = 10;
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
        for (; vx[i] == 0;)
            vx[i] = (int)random(-5, 5);
        for (; vy[i] == 0; )
            vy[i] = (int)random(-5, 5);
        c[i] = color(random(100, 140), random(150, 220), random(150, 250));
    }
}

void draw() {
    background(0);
    for (int i = 0; i < x.length; i++) {
        pingpong(i);
        fill(c[i]);
        stroke(255);
        ellipse(x[i], y[i], d[i], d[i]);
    }
}

void pingpong(int i) {
    if (x[i] >= width - d[i] / 2 || x[i] <= d[i] / 2)
        vx[i] = -vx[i];
    if (y[i] >= height - d[i] / 2 || y[i] <= d[i] / 2)
        vy[i] = -vy[i];
    x[i] += vx[i];
    y[i] +=vy[i];
}
