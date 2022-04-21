size(500, 500);

for (int i = 0; i < 1000; i++) {
    int x = (int)random(width);
    int y = (int)random(height);
    int w = (int)random(30);
    int h = (int)random(30);
    rect(x, y, w, h);
}
