float time = 0, elapsedTime = 0, timeStamp = 0;
int state = 0, point = 0, best = 0;
float start = 10.0, push = 5.0;
PFont f;

void setup() {
    size(800, 500);
    f = createFont("Futura", 20);
    textFont(f);
    textAlign(CENTER, TOP);
    state = 2;
}

void draw() {
    elapsedTime = float(millis()) / 1000;
    time = elapsedTime - timeStamp;
    background(255);
    fill(0);
    switch (state) {
    case 0:    
        text(int(start - time + 1) + "秒後に始まります。", width / 2, 20);
        if (time >= start) {
            state = 1;
            timeStamp = elapsedTime;
            time = elapsedTime - timeStamp;
        }
        break;
    case 1:
        ellipse(width / 2, height / 2, point * 10, point * 10);
        text("マウスをできるだけたくさんクリックしてください。残り" + int(push - time + 1)  + "秒", width / 2, 20);
        text("point: " + point, width / 2, 50);
        if (time >= push) {
            state = 2;
            timeStamp = elapsedTime;
            time = elapsedTime - timeStamp;
            if (point >= best) {
                best = point;
            }
        }
        break;
    case 2:
        text("スコア: " + point, width / 2, 20);
        text("これまでのベストスコア: " + best, width / 2, 50);
        text("もう一度挑戦する場合はEnterキーを押してください。", width / 2, 80);

        break;
    }
}

void mouseReleased() {
    if (state == 1) {
        point++;
    }
}

void keyPressed() {
    if (key == ENTER && state == 2) {
        state = 0;
        timeStamp = elapsedTime;
        time = elapsedTime - timeStamp;
        point = 0;
    }
}
