void setup() {
    size(500, 500);
    noStroke();
}
void draw() {
    background(255);
    fill(0);
    switch (key) {
    case '2':
        ellipse(width / 2, height / 2, 400, 400);
    case '1':
        rect(10, 10, width / 3 - 20, height / 3 - 20);
        break;
    default:
        triangle(20, 20, width - 20, height - 20, 20, height - 20);
        break;
    }
}
