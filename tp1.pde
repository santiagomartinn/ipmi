PImage Paisaje;
void setup(){
  size (800,400);
  background(255);
  Paisaje = loadImage ("piramides.png");
}
void mousePressed()
{
  println(mouseX+","+mouseY);
}
void draw () {
//cielo//
background(#A5C7E0);
//sombra cielo//
fill(#BACFDE);
ellipse(200, 160, 450,170 );  

image(Paisaje,400,0);
fill(0);
text(mouseX+","+mouseY,410,10);

//piso//
fill(#DEC9A1);
rect(0,200,400,200);


//piramide3//
fill(#FAD68D);
triangle(253,144,226,170,250,185);
fill(#B2955A);
triangle(253,144,347,227,240,235);

//piramide2//

noStroke();
fill(#CBA965);
triangle(174,101,310,245,121,267);
fill(#FAD68D);
triangle(174,101,110,180,140,212);

fill(#5C5E5F);
beginShape();
vertex(159,151);
vertex(147,153);
vertex(139,143);
vertex(174,101);
endShape();

fill(#5C5E5F);
beginShape();
vertex(213,142);
vertex(200,155);
vertex(159,151);
vertex(174,101);
endShape();

fill(#AF9E73);
beginShape();
vertex(160,145);
vertex(199,151);
vertex(210,137);
vertex(174,101);
endShape();

fill(#CBBA8E);
beginShape();
vertex(160,145);
vertex(148,148);
vertex(142,139);
vertex(174,101);
endShape();



//piramide1//
noStroke();
fill(#DBCF8B);
triangle(87,137,-20,280,53,294);
fill(#B2955A);
triangle(87,137,190,275,53,294);

//piramide chiquita 1//
fill(#FAD68D);
triangle(114,233,63,301,92,313);
fill(#CBA965);
triangle(114,233,179,300,92,313);

//piramide chiquita 2//
fill(#FAD68D);
triangle(231,190,183,264,231,289);
fill(#A59A6C);
triangle(231,190,311,271,231,289);

}
