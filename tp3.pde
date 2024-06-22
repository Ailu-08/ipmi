//Materia: Materia IPMI //Comision 5 //TP3: Dinamica Circolare//Artista: Marina Apollonio //Alumna: Ailu Avanzini  //Legajo: (94717/7)  //Profesor: Tobias Albirosa
//Link al Video Tutorial: https://www.youtube.com/watch?v=1lgV-5rHTI8&ab_channel=AngelaMart%C3%ADnez

// Declaración de variables
int numCircles = 30; // Número de círculos
float maxDiameter = 400; // Diámetro máximo de los círculos
boolean interactive = false; // Variable para activar/desactivar la interactividad
PImage Circle;
boolean useColorPalette = false; // Variable para activar/desactivar el uso de la paleta de colores

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
    if (i != numCircles - 1) {
      drawCircle(x, y, diameter, i, false);
    } else {
      drawCircle(x, y, diameter, i, true);
    }
    
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
  if (useColorPalette) {
    fill(getColorFromPalette(index));
  } else {
    if (index % 2 == 0) {
      fill(0);
    } else {
      fill(255);
    }
  }

  if (last) {
    pushMatrix();
    if (interactive) {
      // Centra el último círculo dentro del patrón interactivo
      translate(x, y);
    } else {
      // Inclinación del último círculo hacia abajo a la izquierda
      translate(x - 5, y + 5); 
      rotate(-QUARTER_PI); // Rotar hacia abajo a la izquierda (-45 grados)
    }
    ellipse(0, 0, diameter, diameter);
    popMatrix();
  } else {
    ellipse(x, y, diameter, diameter);
  }
}

// Función que devuelve un color de la paleta en función del índice
color getColorFromPalette(int index) {
  switch (index % 10) {
    case 0: return color(135, 206, 250); // Light Sky Blue (Celeste Cielo)
    case 1: return color(0, 255, 255);   // Cyan (Cian)
    case 2: return color(64, 224, 208);  // Turquoise (Turquesa)
    case 3: return color(0, 128, 128);   // Teal (Verde Azulado)
    case 4: return color(75, 0, 130);    // Indigo
    case 5: return color(238, 130, 238); // Violet(a)
    case 6: return color(0, 0, 255);     // Blue (Azul)
    case 7: return color(0, 255, 0);     // Lime(a) (Verde)
    case 8: return color(255, 255, 255); // White (Blanco)
    case 9: return color(255, 0, 255);   // Magenta
    default: return color(255);          // White as default
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

// Función para reiniciar al estado con la interactividad desactivada al presionar la tecla 'r'
void keyPressed() {
  if (key == 'r' || key == 'R') {
    interactive = false;
    useColorPalette = false; // Volver a blanco y negro
    drawInteractiveCircles(true); // Muestra los círculos inclinados al reiniciar
  } else if (key == ' ') {
    useColorPalette = true; // Activar el uso de la paleta de colores
    drawInteractiveCircles(interactive); // Redibujar los círculos con la paleta de colores
  }
}

