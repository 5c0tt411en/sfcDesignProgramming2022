size(500, 500);
background(255);

for (int i = 0; i < 10; i++) {
    int x =  width / 20 + i * width / 10;
    int y = height / 20;
    int r = 20;

    ellipse(x, y, r, r);
}
