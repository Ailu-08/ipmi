int numCircles = 30; // Número de círculos
float maxDiameter = 400; // Diámetro máximo de los círculos
boolean interactive = false; // Variable para activar/desactivar la interactividad
PImage Circle;

void setup() {
  size(800, 400);
  drawInteractiveCircles(true); // Muestra los círculos inclinados al iniciar
  Circle = loadImage("CircleOPT.jpg");
  Circle.resize(width / 2, 0); // Redimensiono la imagen a la mitad del ancho de la ventana
}

void draw() {
  image(Circle, 0, 0);
}

void drawInteractiveCircles(boolean inclinados) {
  background(255);
  // Dibuja los círculos interactivos a la derecha
  for (int i = 0; i < numCircles; i++) {
    float diameter = map(i, 0, numCircles, maxDiameter, 0);
    float x = 3 * width / 4;
    float y = height / 2;
    if (inclinados) {
      x += i * 2; // Inclinación hacia arriba a la derecha
      y -= i * 2; // Inclinación hacia arriba a la derecha
    }
    drawCircle(x, y, diameter, i, inclinados && i == numCircles - 1);
    
    // Añado un patrón adicional con otro for
    for (int j = 0; j < 5; j++) {
      float innerDiameter = diameter - j * 10;
      if (innerDiameter > 0) {
        drawInnerPattern(x, y, innerDiameter);
      }
    }
  }
}

void drawCircle(float x, float y, float diameter, int index, boolean last) {
  // Función que dibuja un círculo con color alternante
  if (index % 2 == 0) {
    fill(0);
  } else {
    fill(255);
  }
    //ESTO ME QUEDO COLGADO PQ INTENTABA HACER QUE EL CIRCULO BLANCO MIRE HACIA ABAJO

  if (last) {
    pushMatrix();
    translate(x, y);
    rotate(-QUARTER_PI); // Rotar hacia abajo a la izquierda
    ellipse(0, 0, diameter, diameter);
    popMatrix();
  } else {
    ellipse(x, y, diameter, diameter);
  }
}

void drawInnerPattern(float x, float y, float diameter) {
  // Función que dibuja un patrón adicional dentro de cada círculo
  stroke(0, 50); // Borde con transparencia
  noFill();
  ellipse(x, y, diameter, diameter);
}

boolean isMouseOverCircle(float x, float y, float diameter) {
  // Función que verifica si el mouse está sobre un círculo
  return dist(mouseX, mouseY, x, y) < diameter / 2;
}

void mousePressed() {
  if (isMouseOverCircle(3 * width / 4, height / 2, maxDiameter)) {
    interactive = !interactive;
    if (interactive) {
      // Muestra los círculos centrados al activar la interactividad
      drawInteractiveCircles(false);
    } else {
      // Muestra los círculos inclinados al desactivar la interactividad
      drawInteractiveCircles(true);
    }
  }
}

void keyPressed() {
  if (key == 'r' || key == 'R') {
    interactive = false;
    drawInteractiveCircles(true); // Muestra los círculos inclinados al reiniciar
  }
}
