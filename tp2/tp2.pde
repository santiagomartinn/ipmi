PImage img1;
PImage img2;
PImage img3;
int y;
int x;
PFont font;
int contador;
int tamañoLetra;
int izqDer;
String texto;
boolean verBoton = false;
int botonX;
int botonY;
int anchoBoton;
int altoBoton;
int diametro;
void setup() {
  size(640,480);
  img1 = loadImage("obra1.jpg");
  img2 = loadImage("obra2.jpg");
  img3 = loadImage("obra3.jpg");
 
  tamañoLetra = 10;
  izqDer = 10;
  y = 20;
  x = 10;
  diametro = width / 10;
  
  font = loadFont("CenturyGothic-Bold-48.vlw");
  textFont(font,32);
}


void draw () {
  background(255);
  contador ++;
 
  // PANTALLA 1
  if(contador < 300){
    fill(0);
    image(img1,0,0);
    fill(0,247,187);
    textAlign(CENTER);
    text("Machine Hallucinations – Coral Dreams",width/2,y);
    y++;
  }
 
  // PANTALLA 2
  else if (contador > 300 && contador < 600){
    fill(0);
    image(img2,0,0);
    fill(0,247,187);
    textAlign(CENTER);
    text("Artista:Refik Anadol",width/2,y);

    y--;
  }
 
  // PANTALLA 3
  else if (contador > 600 && contador < 1000){
    fill(0);
    image(img3,0,0);
    fill(0,247,187);
    textAlign(CENTER);
    text("Miami, FL, EE. UU.", x,300);
     x++;
    if (contador > 800) {
        fill(0);
    image(img3,0,0);
    fill(0,247,187);
      
    }
   
     if (contador > 800) {
      verBoton = true;
      fill(255,0,0);
      circle(width/2, height/2, diametro);
    fill(255);
    textSize(12);
    textAlign(CENTER, CENTER);
    text("Reiniciar", width/2, height/2 );
     fill(0, mouseY);
    text("Gracias", mouseX, mouseY);
    }
  }
}


void mouseClicked() {
     if (dist(mouseX, mouseY, width/2, height/2) < diametro/2) {

    contador = 0;
    tamañoLetra = 10;
    izqDer = 10;
    y = 10;
    x = 0;
    verBoton = false;
  }
}
