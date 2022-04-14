int x = 100;

void setup() {
    size(500, 500);
    noStroke();
}

void draw() {
    fill(255, 10);
    rect(0, 0, width, height);
    x++;
    fill(255, 0, 0);
    ellipse(x, 100, 50, 50);
}
