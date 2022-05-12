PImage img;
int p = 10;

void setup() {
    img = loadImage("sfc.png");
    size(720, 450);
    rectMode(CENTER);
    noStroke();
}

void draw() {
    background(0);
    image(img, 0, 0, width, height);
    for (int y = 0; y < img.height; y+=p) {
        for (int x = 0; x < img.width; x+=p) {
            color c = img.get(x, y);
            fill(c);
            float d = dist(mouseX, mouseY, x + p / 2, y + p / 2);
            if (d > 100)
                rect(x + p / 2, y + p / 2, p, p);
        }
    }
}
