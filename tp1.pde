//TP1 // Materia IPMI //Comision 5 //Alumna: Ailen Avanzini //Profesor: Tobias Albirosa
PImage appleImage;

void setup() {
  size(800, 400);
  background(255);
  // Carga la imagen de la manzana
  appleImage = loadImage("Apple.jpg");
}

void draw() {
  // Dibuja la manzana
  drawApple();
  // Muestra la imagen de la manzana
  image(appleImage, 0, 0, 400, 400);
}

void drawApple() {
  // Dibuja el cuerpo de la manzana
  fill(170, 60, 60); // Color rojo fuerte (bordes del centro)
  strokeWeight(15);
  circle(600,244,250);

  noStroke();
  fill(215, 95, 90); // Color rojo mas claro (centro)
  circle(600,244,200);
  
  //Mancha de la manzana
  fill(255, 167, 141); // Color rojo
bezier(690.0,164.0,596.0,73.0,677.0,270.0,689.0,165.0);
bezier(668.0,157.0,559.0,101.0,730.0,266.0,668.0,158.0);

//Linea separacion de linea y mancha (Manzana)
stroke(170, 60, 60); // Color rojo
strokeWeight(16);
bezier(650.0,139.0,636.0,138.0,673.0,142.0,690.0,175.0);

//Linea iluminacion derecha de la manzana
noFill();
stroke(235, 180, 141);
strokeWeight(10);
bezier(627.0,126.0,720.0,144.0,763.0,297.0,646.0,355.0);

  
  // Dibujar la hoja de la manzana (triángulo invertido)
  fill(0, 128, 0); // Color verde
 stroke(0); strokeWeight(5);
 beginShape();  vertex(606,121);  vertex(602,107);  vertex(605,88);  vertex(613,69);  vertex(622,61);  vertex(634,53);  vertex(653,44);  vertex(667,41);  vertex(677,40);  vertex(683,49);  vertex(686,64);
 vertex(682,79);  vertex(675,96);  vertex(662,101);  vertex(643,108);  vertex(623,112);   vertex(608,119);  vertex(606,122);   endShape(CLOSE);

fill(0, 255, 0,100); // Color verde
  noStroke();
beginShape();  vertex(612,103); vertex(622,79); vertex(647,62); vertex(669,54); vertex(671,68); vertex(667,84); vertex(645,90); vertex(615,97); vertex(610,102);
  vertex(610,99); vertex(620,79); vertex(666,83); vertex(663,93); vertex(643,97); vertex(623,100); vertex(610,101); endShape(CLOSE);
beginShape();  vertex(661,64); vertex(660,59); vertex(667,59); vertex(667,66); vertex(660,67
); vertex(661,64); vertex(656,66); vertex(657,59); vertex(657,56); vertex(662,64); endShape(CLOSE);
 
  // Dibujar los ojos
  fill(0); // Color negro 
  circle(558,217,50);
  circle(638,217,50);
  
  // Dibujar los brillos en los ojos (círculos blancos)
  fill(255); // Color blanco
  noStroke();
  circle(552,212,15);
  circle(569,225,5);
  circle(631,212,15);
  circle(645,225,5);
  
  // Dibujar la boca
  noStroke();
  fill(156,67,36);
  arc(600, 249, 35, 35, 0, PI, CHORD);
  
  //Dientes de la manzana
noStroke();
fill(255);
rect(590,249,20,6,80);

//Lengua de la manzana
noStroke();
fill(235, 95, 90);
ellipse(600,260,16,7);

}
void mouseClicked() {
  println(mouseX, mouseY);
}
