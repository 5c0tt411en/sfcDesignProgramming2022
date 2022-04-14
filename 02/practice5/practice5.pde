int x;
int y;

void setup() {
    background(0);
    size(500, 500);
    frameRate(1);
}

void draw() {
    background(0);
    x = (int)random(width);
    y = (int)random(height);
    
    ellipse(x, y, 100, 100);
}
