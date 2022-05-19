float elapsedTime = 0;

void setup() {
    size(500, 500);
    textSize(50);
    textAlign(LEFT, TOP);
}

void draw() {
    elapsedTime = float(millis()) / 1000;
    background(255);
    fill(0);
    text(elapsedTime, 20, 20);
}
