class Particle {
    float x;
    float y;
    float d;
    float vx;
    float vy;

    Particle(float _x, float _y, float _d, float _vx, float _vy) {
        x = _x;
        y = _y;
        d = _d;
        vx = _vx;
        vy = _vy;
    }

    void display() {
        fill(255);
        ellipse(x, y, d, d);
    }
    void update() {
        x += vx;
        y += vy;
        if (x >= width - d / 2 || x <= d / 2)
            vx = -vx;
        if (y >= height - d / 2 || y <= d / 2)
            vy = -vy;
    }
    void bound(float _d, float _x, float _y) {
        if (dist(x, y, _x, _y) < d / 2 + _d / 2) {
            vx = -vx;
            vy = -vy;
        }
    }
}
