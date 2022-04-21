int r = 200;
int d = 20;
size(500, 500);
background(255);
noStroke();

for (int i = 0; i < 360; i++) {
    int x = width / 2 + int(r * cos(radians(i)));
    int y = height / 2 - int(r * sin(radians(i)));

    fill(0, 50);   
    ellipse(x, y, d, d);
}
