size(500, 500);
background(255);

for (int i = 0; i < 500; i++) {
    line(i, height, i, height * (1 - noise(float(i) / 50)));
}
