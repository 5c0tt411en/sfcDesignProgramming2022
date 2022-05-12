PImage img;

void setup() {
    img = loadImage("sfc.png");
    size(720, 420);
}

void draw() {
    int x = int((float)millis() / 30) % width;
    background(0);
    image(img, 0, 0, width, height);
    for (int y = 0; y < img.height; y++) {
        color c = img.get(x, y);
        stroke(c);
        line(0, y, x, y);
    }
}
