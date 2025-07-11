//https://youtu.be/ssY7yL5T1Pc (video orignal)
//https://youtu.be/v-N-b55fT8E (video del recuperatorio haciendo enfasis en la devolucion)
PImage referencia;
color fondoColor;
color circulosColor;
float tamaño = 1;
float rotacion = 0;

int botonX = 20;
int botonY = 350;
int botonAncho = 120;
int botonAlto = 40;

void setup() {
  size(800, 400);
  referencia = loadImage("circulos1.png");
  fondoColor = color(144, 238, 144);
  circulosColor = color(255, 50, 50);
}

void draw() {
  background(fondoColor);
  image(referencia, 0, 0);

  if (mouseX > width / 2) {
    if (mouseY < 200) {
      tamaño = map(mouseY, 0, 200, 2, 1);
    } else {
      tamaño = map(mouseY, 200, height, 1, 0.5);
    }
  }

  rotacion += 1;

  pushMatrix();
  translate(600, 200);
  rotate(rotacion);

  for (int i = 1; i <= 22; i++) {
    float base = i * 17;
    float tamanoC = calcularTamaño(base, tamaño);

    noFill();
    stroke(circulosColor);
    strokeWeight(map(i, 1, 22, 5, 1));
    circle(0, 0, tamanoC);
  }

  popMatrix();

  dibujarBoton(botonX, botonY, botonAncho, botonAlto);
}

void mousePressed() {
  if (mouseX > width / 2) {
    if (dist(mouseX, mouseY, 600, 200) < 200) {
      circulosColor = color(random(255), random(255), random(255));
    } else {
      fondoColor = color(random(255), random(255), random(255));
    }
  }

  if (mouseX > botonX && mouseX < botonX + botonAncho &&
      mouseY > botonY && mouseY < botonY + botonAlto) {
    fondoColor = color(170, 220, 170);
    circulosColor = color(255, 50, 50);
    tamaño = 1;
    rotacion = 0;
  }
}

void keyPressed() {
  if (key == ENTER) {
    fondoColor = color(170, 220, 170);
    circulosColor = color(255, 50, 50);
    tamaño = 1;
    rotacion = 0;
  } else if (key == 'c' || key == 'C') {
    circulosColor = color(random(255), random(255), random(255));
  } else if (key == 'f' || key == 'F') {
    fondoColor = color(random(255), random(255), random(255));
  }
}

void dibujarBoton(int x, int y, int ancho, int alto) {
  fill(200);
  stroke(50);
  rect(x, y, ancho, alto, 10);
  fill(0);
  textSize(16);
  textAlign(CENTER, CENTER);
  text("Reiniciar", x + ancho / 2, y + alto / 2);
}

float calcularTamaño(float base, float escala) {
  float resultado = base * escala;
  if (resultado < 10) resultado = 10;
  if (resultado > 400) resultado = 400;
  return resultado;
}
