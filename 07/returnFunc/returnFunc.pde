void setup() {
    size(500, 500);
    fill(0);
    textSize(50);
}

void draw() {
    background(255);
    int sum = 0;
    for(int i = 0; i < width; i++) {
        int rand = int(random(height));
        ellipse(i, rand, 5, 5);
        sum += rand;
    }
    line(0, average(width, sum), width, average(width, sum));
    text(str(average(width, sum)), 0, average(width, sum));
}

float average(int n, int s) {
    float avg;
    avg = (float)s / (float)n;
    return avg;
}
