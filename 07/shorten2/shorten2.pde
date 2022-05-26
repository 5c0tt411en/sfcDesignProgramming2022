void setup() {
    size(600, 400);
    noStroke();
}

void draw() {
    background(0);
    for (int i = 0; i < 15; i++) {
        fill(255, (15 - i) * 255 / 15);
        ellipse(
            width / 2 - 15 * i * width / 500, 
            height / 2 + 50 * cos(radians(15 * i)), 
            (15 - i) * 2, 
            (15 - i) * 2
            );
    }
    
        for (int i = 0; i < 20; i++) {
        fill(255, (20 - i) * 255 / 20);
        ellipse(
            width - 20 * i * width / 500, 
            height / 4 + 50 * cos(radians(20 * i)), 
            (20 - i) * 2, 
            (20 - i) * 2
            );
    }
    
        for (int i = 0; i < 30; i++) {
        fill(255, (30 - i) * 255 / 30);
        ellipse(
            width + 100 - 30 * i * width / 500, 
            3 * height / 4 + 50 * cos(radians(30 * i)), 
            (30 - i) * 2, 
            (30 - i) * 2
            );
    }
}
