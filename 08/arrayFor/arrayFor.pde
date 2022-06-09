int[] x = new int[100];
int[] y = new int[100];

void setup() {
    size(600, 400);
    for (int i = 0; i < x.length; i++) {
        x[i] = (int)random(width);
        y[i] = (int)random(height);
    }
}

void draw() {
    background(0);
    for (int i = 0; i < x.length; i++) {
        ellipse(x[i], y[i], 10, 10);
    }
}
