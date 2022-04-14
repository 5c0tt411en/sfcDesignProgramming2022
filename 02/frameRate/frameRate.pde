int x = 100;

void setup() {
    size(500, 500);
    fill(255, 0, 0);
    frameRate(60);
}
void draw() {
    x++;
    ellipse(x, 100, 50, 50);
}
