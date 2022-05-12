int counter;

void setup() {
    size(500, 500);
}

void draw() {
    background(255);
    for (int i = 0; i < 360; i++) {
        float x = width / 2 + 300 * sin(radians(i + frameCount)) * noise(float(i + frameCount) / 50);
        float y = height / 2 + 300 * cos(radians(i + frameCount)) * noise(float(i + frameCount) / 50);
        stroke(127 * (1 + sin(radians(i + frameCount))), 102, 194, 100);

        line((int)x, (int)y, width / 2, height / 2);
    }
}

void keyPressed() {
    if (key == 's') {
        save("data/exportedImages/test" + str(counter) + ".png");
    }
    counter++;
}
