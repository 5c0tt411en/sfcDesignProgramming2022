int prevSum = 0;

void setup() {
    size(500, 500);
    fill(0);
    textSize(50);
}

void draw() {
    background(255);
    int sum = 0;
    for (int i = 0; i < width; i++) {
        int n = int(noise(float(i + frameCount) / 200) * height);
        fill(separate(width, prevSum, n));
        ellipse(i, n, 5, 5);
        sum += n;
    }
    fill(0);
    line(0, average(width, sum), width, average(width, sum));
    text(str(average(width, sum)), 0, average(width, sum));
    
    prevSum = sum;
}

color separate(int n, int s, int y) {
    float avg;
    avg = (float)s / (float)n;
    color c;
    if (abs(y - avg) < 20) {
        c = color(255, 0, 0);
    }
    else {
        c = color(0);
    }
    return c;
}

float average(int n, int s) {
    float avg;
    avg = (float)s / (float)n;
    return avg;
}
