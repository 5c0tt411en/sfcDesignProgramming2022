size(500, 500);
background(255);

for (int i = 0; i < 360; i++) {
    int x = int(width / 2 + 300 * cos(radians(i)) * noise(float(i) / 50));
    int y = int(height / 2 - 300 * sin(radians(i)) * noise(float(i) / 50));
    stroke(127 * (1 + cos(radians(i))), 102, 194, 100);
        
    line(x, y, width / 2, height / 2);
}
