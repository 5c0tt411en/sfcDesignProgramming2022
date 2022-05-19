float elapsedTime = 0, time = 0, timeStamp = 0;
int state = 0;

void setup() {
    size(800, 500);
    noStroke();
    rectMode(CENTER);
}

void draw() {
    elapsedTime = float(millis()) / 1000;
    time = elapsedTime - timeStamp;
    background(255);
    switch (state) {
    case 0:
        fill(255, 120, 180, (3 - time) * 255);
        ellipse(width / 2, height / 2, 100 * time, 100 * time);
        if (time >= 3.0) {
            state = 1;
            timeStamp = elapsedTime;
        }
        break;
    case 1:
        fill( 120, 180, 255, (2 - time) * 255);
        rect(width / 2, height / 2, 100 * time, 100 * time);
        if (time >= 2.0) {
            state = 2;
            timeStamp = elapsedTime;
        }
        break;
    case 2:
        fill(180, 255, 120, (3 - time) * 255);
        rect(width / 2, height / 2, time * width / 3, time * height / 3);
        if (time >= 3.0) {
            state = 0;
            timeStamp = elapsedTime;
        }
        break;
    }
}
