float r = 0.02;
int d = 5;
size(500, 500);
background(255);
noStroke();

for (int i = 0; i < 10000; i++) {
    int x = width / 2 + int(r * i * cos(radians(i)));
    int y = height / 2 - int(r * i * sin(radians(i)));

    fill(0, 50); 
    ellipse(x, y, d, d);
}
