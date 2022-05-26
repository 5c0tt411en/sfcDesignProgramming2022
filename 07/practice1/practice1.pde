int prevSum = 0;

void setup() {
    size(500, 500);
    fill(0);
}

void draw() {
    background(255);
    int sum = 0;
    for (int i = 0; i < width; i++) {
        int rand = int(random(height));
        fill(separate(width, prevSum, rand));
        ellipse(i, rand, 5, 5);
        sum += rand;
    }
    prevSum = sum;
}

color separate(int n, int s, int y) {
    float avg;
    avg = (float)s / (float)n;
    color c;
    if (abs(y - avg) < 100) {
        c = color(255, 0, 0);
    } else {
        c = color(0);
    }
    return c;
}
