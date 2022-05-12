String s = "";

void setup() {
    size(500, 500);
    fill(0);
}
void draw() {
    background(255);
    textSize(40);
    text(s, 0, 0, width, height);
}
void keyPressed() {
    if (key == BACKSPACE) {
        if (s.length() >= 1) {
            s = s.substring(0, s.length() - 1);
        }
    } else {
        s += str(key);
    }
}
