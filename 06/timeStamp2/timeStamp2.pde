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
    text("time: " + time, 20, height / 6);
    text("elapsedTime: " + elapsedTime, 20, height / 2);
    text("timeStamp: " + timeStamp, 20, 5 * height / 6);
    if (time >= 10.0) {
        timeStamp = elapsedTime;
    }
    noFill();
    rect(0, 0, time * 5, height / 3);
    rect(0, height / 3, elapsedTime * 5, height / 3);
    rect(0, height * 2 / 3, timeStamp * 5, height / 3);
}
