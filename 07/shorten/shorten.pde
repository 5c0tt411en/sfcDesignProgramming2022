void setup() {
    size(600, 400);
    noStroke();
}

void draw() {
    background(0);
    for (int i = 0; i < 15; i++) {
        fill(255, (15 - i) * 255 / 15);
        ellipse(
            width / 2 - 15 * i * width / 500, 
            height / 2 + 50 * cos(radians(15 * i)), 
            (15 - i) * 2, 
            (15 - i) * 2
            );
    }
}
