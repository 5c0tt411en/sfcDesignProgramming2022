PImage img;
int p = 10;

void setup() {
    img = loadImage("sfc.png");
    size(720, 420);
    noFill();
}

void draw() {
    background(0);
    for (int y = 0; y < img.height; y+=p) {
        for (int x = 0; x < img.width; x+=p) {
            color c = img.get(x, y);
            stroke(255);
            int r = (int)(red(c) + green(c) + blue(c)) / 100;
            ellipse(x + p / 2, y + p / 2, r, r);
        }
    }
}
