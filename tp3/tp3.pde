//https://youtu.be/ssY7yL5T1Pc
PImage referencia;
color fondoColor;
color circulosColor;
float tamaño = 1;
float rotacion = 0;

//poscion que voy a dibujar mi boton de reincio
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
  //use estos condicionales para controlar el tamaño y la rotcion de mi dibujo 
  if (mouseX > width / 2) {
    if (mouseY < 200) {
      tamaño = map(mouseY, 0, 200, 2, 1);  
    } else {
      tamaño = map(mouseY, 200, height, 1, 0.5); 
    }
  }

  rotacion += 1; 
//animo mis circulos 
 pushMatrix();
  translate(600, 200);
  rotate(rotacion);
//dibujo multiples circulos 
  for (int i = 1; i <= 22; i++) {
    float tamanoC = i * 17 * tamaño;
     if (tamanoC < 10) {
    tamanoC = 10;
  }
  //con este condicional logro un limite maximo para los circulos 
  if (tamanoC > 400) {
    tamanoC = 400;
  }


    noFill();
    stroke(circulosColor);
    strokeWeight(map(i, 1, 22, 5, 1)); 
    circle(0, 0, tamanoC);
  }

  popMatrix();

  // mi boton de reincio 
  fill(200);
  stroke(50);
  rect(botonX, botonY, botonAncho, botonAlto, 10);

  fill(0);
  textSize(16);
  textAlign(CENTER, CENTER);
  text("Reiniciar", botonX + botonAncho / 2, botonY + botonAlto / 2);
}

void mousePressed() {
  // yo utilizo condicionales cuando toco click cambia el color, ya sea del fondo o los circulos
  if (mouseX > width / 2) {
    if (dist(mouseX, mouseY, 600, 200) < 200) {
      circulosColor = color(random(255), random(255), random(255)); 
    } else {
      fondoColor = color(random(255), random(255), random(255));
    }
  }

  //  determine mi boton de reinicio 
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
  }
}
