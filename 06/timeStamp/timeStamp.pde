float elapsedTime = 0, time = 0, timeStamp = 0;

void setup() {
    size(800, 500);
    textSize(50);
    textAlign(LEFT, CENTER);
}

void draw() {
    elapsedTime = float(millis()) / 1000;
    time = elapsedTime - timeStamp;
    background(255);
    fill(0);
    text("time: " + time, 20, 20);
    if (time >= 10.0) {
        timeStamp = elapsedTime;
    }
}
