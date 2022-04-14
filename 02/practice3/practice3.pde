color c1 = color(255, 0, 0);
color c2 = color(0, 0, 255);
int x = (int)random(0, 1000);
int y = (int)random(0, 1000);
int w = 50;
int h = 50;

size(1000, 1000);

fill(c1);
stroke(c2);
ellipse(x, y, w, h);
