PImage appleImage;

void setup() {
  size(800, 400);
  background(255);
  // Carga de la imagen de la manzana
  appleImage = loadImage("Apple.jpg");
}

void draw() {
  // Dibujar la manzana
  drawApple(width - 200, height/2 + 45, 250); // Posición ajustada
  // Mostrar la imagen de la manzana
  image(appleImage, 0, 0, 400, 400); // Posición y tamaño ajustados
}

void drawApple(float x, float y, float diameter) {
  // Dibujar el cuerpo de la manzana
  fill(170, 60, 60); // Color rojo
  strokeWeight(5);
  circle(600,244,250);
  noStroke();
  fill(215, 95, 90); // Color rojo
  circle(600,244,200);
  fill(250, 179, 171); // Color rojo
  circle(650,167,50);



  
  // Dibujar la hoja de la manzana (triángulo invertido)
  fill(0, 128, 0); // Color verde
  beginShape();
  vertex(x - diameter*0.1, y - diameter*0.8); // Punto izquierdo
  vertex(x + diameter*0.1, y - diameter*0.8); // Punto derecho
  vertex(x, y - diameter*1.2); // Punto superior
  endShape(CLOSE);
  
  // Dibujar los ojos
  fill(0); // Color negro
  
  float eyeSeparation = diameter * 0.15; // Separación entre los ojos
  
  circle(558,217,50);
  circle(638,217,50);
  
  // Dibujar los brillos en los ojos (círculos blancos)
  fill(255); // Color blanco
  circle(552,212,21);
  circle(569,225,10);
  circle(631,212,21);
  circle(645,225,10);
  
  // Dibujar la boca
  noFill(); // Sin relleno
  stroke(0); // Color negro
  strokeWeight(3); // Grosor del trazo
  arc(x, y - diameter*0.1, diameter*0.3, diameter*0.2, 0, PI); // Boca (arco)
}
void mouseClicked() {
  println(mouseX, mouseY);
}
