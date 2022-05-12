PImage img;

void setup() {
    size(500, 500);
    img = loadImage("processing.png");
}

void draw() {
    tint(mouseX, 0, mouseY);
    image(img, 0, 0, width, height);
    noTint();
    image(img, 0, 0, width / 4, height / 4);
}
