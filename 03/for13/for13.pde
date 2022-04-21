size(500, 500);
background(255);
rectMode(CENTER);
noFill();

for (int j = 0; j < 10; j++) {
    for (int i = 0; i < 10; i++) {
        for (int d = 10; d <= 50; d+=10) {
            int x =  width / 20 + i * width / 10;
            int y = height / 20 + j * height / 10;
            
            stroke(0, j * 25, i * 25);
            strokeWeight(5 - d / 10);
            rect(x, y, d, d);
        }
    }
}
