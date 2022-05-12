PFont f1, f2;
f1 = createFont("futura", 40);
f2 = createFont("osaka", 40);
fill(0);
background(255);
textFont(f1);
text("test", 0, 40);
textFont(f2);
text("test", 0, 80);
