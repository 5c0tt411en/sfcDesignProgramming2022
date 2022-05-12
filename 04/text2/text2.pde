String s = "In Favor of the Extreme";

void setup() {
    size(500, 500);
    textSize(40);
}

void draw() {
    background(255);
    fill(200);
    rect(10, 10, mouseX, mouseY);
    fill(0);
    text(s, 10, 10, mouseX, mouseY);
}
