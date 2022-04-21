int a = 0;

size(500, 500);

while (a < 100) {
    line(a * 5, 0, (100 - a) * 5, height);
    a++;
}
