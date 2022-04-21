size(500, 500);
background(255);
rectMode(CENTER);
noFill();

for (int d = 10; d <= 50; d+=10) {
    int x =  width / 20;
    int y = height / 20;
    strokeWeight(5 - d / 10);
    rect(x, y, d, d);
}
