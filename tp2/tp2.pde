//Creo mis variables 
String texto;
int e;
int mivariable1, mivariable2, mivariable3, mivariable4, mivariable5, mivariable6;
//posiciones de los textos
float textX1 = 640;
float textY1= 440;
float textX2 = 640;
float textY2= 440;
float textX3=640;
float textY3=440;
float textX4=640;
float textY4=440;
float textX5= 640;
float textY5=440;
float textX6=640;
float textY6=440;
//variable de mi fuente 
PFont miTexto;
//variables de imagen 
PImage juego1,juego2, juego3, juego4, juego5, juego6;
color colorLapiz;
int grosorLapiz;


void setup() {
  size(640, 480);
  textAlign(LEFT, CENTER);
  colorMode( HSB, 360, 100, 100 );
  miTexto=loadFont("CourierNewPS-BoldItalicMT-20.vlw");
  // Cargo las imágenes
  juego1 = loadImage("imagen1.jpg");
  juego2 = loadImage("imagen2.jpg");
  juego3 = loadImage("imagen3.jpg");
  juego4 = loadImage("imagen4.jpg");
  juego5 = loadImage("imagen5.jpg");
  juego6 = loadImage("imagen6.jpg");
 //cargo las variables 
  colorLapiz = color ( 0 );
  grosorLapiz = 1;
  texto = "pantalla-1";
  e = 1;
  mivariable1 = mivariable2 = mivariable3 = mivariable4 = mivariable5 = mivariable6 = 0;
}

void draw(){
 println(mouseX, mouseY);{
{
if (e == 1) {
    background(55);
    image(juego1, 0, 0, width, 400);
    fill(255);
    textSize(20);
    textFont(miTexto);
    text("Vito Scaletta se mezcla con la mafia para pagar las deudas de su padre\n intentará demostrar lo que vale y ascender en la familia a base de cometer crímenes.", textX1, textY1);
    textX1 -= 3;

    if (textX1 < -textWidth("Vito Scaletta se mezcla con la mafia para pagar las deudas de su padre\n intentará demostrar lo que vale y ascender en la familia a base de cometer crímenes.")) {
      textX1 = width;
    }

    if (mivariable1 < 320) {
      mivariable1 -= 3;
    }


    if (frameCount >= (60 * 19)) {
      e = 2;
    }
  }else if (e == 2) {
    background(55);
    image(juego2, 0, 0, width, 400);
    fill(255);
    textSize(20);
    text("El juego transcurre en Empire Bay, Nueva York. Años 40 y 50. ", textX2, textY2);
    textX2 -= 3;

    if (textX2 < -textWidth("El juego transcurre en Empire Bay, Nueva York. Años 40 y 50.")) {
      textX2 = width;
    }

    if (mivariable2 < 320) {
      mivariable2 += 3;
    }

  if (frameCount >= (60 * 34)) {
      e = 3;
    }
  } else if (e == 3) {
    background(55);
    image(juego3, 0, 0, width, 400);
    fill(255);
    textSize(20);
    text("A lo largo del juego iremos conociendo distintos miembros de la familia", textX3, textY3);
    textX3 -= 3;

    if (textX3 < -textWidth("A lo largo del juego iremos conociendo distintos miembros de la familia")) {
      textX3 = width;
    }

    if (mivariable3 < 320) {
      mivariable3 += 3;
    }
  if (frameCount >= (60 * 50)) {
      e = 4;
    }
  } else if (e == 4) {
    background(55);
    image(juego4, 0, 0, width, 400);
    fill(255);
    textSize(20);
    text("Junto a Joe Barbaro, iremos completando distintas misiones pero no todo saldria como lo esperado.", textX4, textY4);
    textX4 -= 3;

    if (textX4 < -textWidth("Junto a Joe Barbaro, iremos completando distintas misiones pero no todo saldria como lo esperado.")) {
      textX4 = width;
    }

    if (mivariable4 < 320) {
      mivariable4 += 3;
    }
  if (frameCount >= (60 * 70)) {
      e = 5;
    }
  } else if (e == 5) {
    background(55);
    image(juego5, 0, 0, width, 400);
    fill(255);
    textSize(20);
    text("Mafia II es un juego de acción y aventuras ambientado en un mundo abierto, jugado en 3ra persona ", textX5, textY5);
    textX5 -= 3;

    if (textX5 < -textWidth("Mafia II es un juego de acción y aventuras ambientado en un mundo abierto, jugado en 3ra persona ")) {
      textX5 = width;
    }  

    if (mivariable5 < 320) {
      mivariable5 -= 3;
    }
    if (frameCount >= (60 * 90)) {
      e = 6;
    }
  } else if (e == 6) {
    background(55);
    image(juego6, 0, 0, width, 400);
    fill(0, 80, 80);
    textSize(20);
   stroke( 0 );
  strokeWeight( 1 );
  rect( 558, 0, 80, 80 );
  fill(0);
  text("FIN",576,40);
      fill(255);
    text("En el juego podremos interactuar con armas y ser perseguidos por la policia.", textX6, textY6);
    textX6 -= 3;

    if (textX6 < -textWidth("En el juego podremos interactuar con armas y ser perseguidos por la policia.")) {
      textX6 = width;
    }

    if (mivariable6 < 320) {
      mivariable6 += 3;
    }

  }textSize(36);
  text(int(frameCount / 60), 12, 12);
}
 }
}
void mousePressed() {
   if (e == 6 && mouseX > 558 && mouseX < 558 + 80 && mouseY > 0 && mouseY < 0 + 80) {
       e = 1;
       frameCount = 0; 
       mivariable1 = mivariable2 = mivariable3 = mivariable4 = mivariable5 = mivariable6 = 0;
   }
   
}
