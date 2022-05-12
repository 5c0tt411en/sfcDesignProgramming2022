PImage img;
int norm = 30000;
int h;

void setup() {
    img = loadImage("sfc2.jpg");
    size(512, 300);
    noStroke();
    h = height / 3;
}

void draw() {
    background(255);
    for (int i = 0; i <= 255; i++) {
        int r = 0, g = 0, b = 0;
        for (int y = 0; y < img.height; y++) {
            for (int x = 0; x < img.width; x++) {
                color c = img.get(x, y);
                if (red(c) == i) r++;
                if (green(c) == i) g++;
                if (blue(c) == i) b++;
            }
        }
        fill(255, 0, 0);
        rect(i * 2, h, 2, - h * r / norm);
        fill(0, 255, 0);
        rect(i * 2, h * 2, 2, - h * g / norm);
        fill(0, 0, 255);
        rect(i * 2, h * 3, 2, - h * b / norm);
    }
}
