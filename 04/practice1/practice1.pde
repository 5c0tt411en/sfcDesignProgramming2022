String s = "In Favor of the Extreme";

size(500, 500);
textSize(40);
background(255);

for (int i = 0; i < 100; i++) {
    int x = (int)random(-150, width);
    int y = (int)random(-150, height);
    int w = (int)random(50, 150);
    int h = (int)random(50, 150);
    int c = (int)random(0, 255);
    fill(c);
    rect(x, y, w, h);
    textSize((w + h) / 10);
    fill(0);
    text(s, x, y, w, h);
}
