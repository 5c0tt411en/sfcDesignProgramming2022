PImage img;
int p = 15;

void setup() {
    img = loadImage("sfc.png");
    size(720, 420);
    noStroke();
}

void draw() {
    background(0);
    for (int y = 0; y < img.height; y+=p) {
        for (int x = 0; x < img.width; x+=p) {
            color c = img.get(x, y);
            fill(c);
            ellipse(x + p / 2, y + p / 2, p, p);
        }
    }
}
