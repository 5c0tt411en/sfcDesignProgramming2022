class Particle {
    float x;
    float y;
    float d;
    float vx;
    float vy;
    color c;

    Particle(float _x, float _y, float _d, float _vx, float _vy) {
        x = _x;
        y = _y;
        d = _d;
        vx = _vx;
        vy = _vy;
    }

    void display() {
        fill(c);
        ellipse(x, y, d, d);
    }
    void update() {
        x += vx;
        y += vy;
        if (x >= width - d / 2 || x <= d / 2) {
            vx = -vx;
            changeColor();
        }
        if (y >= height - d / 2 || y <= d / 2) {
            vy = -vy;
            changeColor();
        }
    }
    void changeColor() {
        c = color(
            random(100, 255), 
            random(100, 255), 
            random(100, 255)
            );
    }
}
