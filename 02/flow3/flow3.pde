int x = 100;

void setup() {
    size(500, 500);
    fill(255, 0, 0);
}
void draw() {
    background(255);
    x++;
    ellipse(x, 100, 50, 50);
}
