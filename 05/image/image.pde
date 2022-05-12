PImage img;

void setup() {
    size(500, 500);
    img = loadImage("processing.png");
}

void draw() {
    image(img, 0, 0, width, height);
}
