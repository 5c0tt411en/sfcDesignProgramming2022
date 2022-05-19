void setup() {
    size(500, 500);
    ellipseMode(LEFT);
}

void draw() {
    float c = (float)frameCount;
    background(255);
    for (int i = 0; i < width; i+=10) {
        float h = noise((i + c) / 200);
        ellipse(i, h * height, 10, 10);
    }
}
