//Materia: Materia IPMI //Comision 5 //TP2: Rebelion en la Granja //Alumna: Ailu Avanzini  //Legajo: (94717/7)  //Profesor: Tobias Albirosa

//Declaracion de variables
float elcontador;
float suma;

//Color Ramdom
float R;
float G;
float B;

// Texto Pantalla Inicial
float texto1;

//Texto Pantalla Dos
String texto3;
int Movimtext;

//Texto Pantalla tres
String texto4;
int Movimtext2;

//Texto Pantalla cuatro
String texto5;
int Movimtext3;

//Texto Pantalla siete
String texto7;

//Controles Movimiento Horizontal
float Pan;
int Chau;

// Animaciones Pantalla Final
float Sol;
float Sol2;
float Sol3;
float Sol4;
float Sol5;
float Sol6;
float Sol7;
float Sol8;
float Sol9;
float Sol10;
float Sol11;
float Sol12;
float Sol13;
float Sol14;
float Sol15;
float Sol16;
float Sol17;
float Sol18;
float Sol19;
float Star;

String activarboton;
String logicaestado;

PImage Pig0;
PImage Pig1;
PImage Pig2;
PImage Pig3;
PImage Pig6;
PImage Pig7;

//fuente
PFont fuentea;
PFont fuenteb;


void setup() {
  Pig0 = loadImage("Pig (0).jpg");
  Pig1 = loadImage("Pig (1).gif");
  Pig2 = loadImage("Pig (2).jpg");
  Pig3 = loadImage("Pig (3).jpg");
  Pig6 = loadImage("Pig (6).jpg");
  Pig7 = loadImage("Pig (7).jpg");
  size(640, 480);
  fuentea = loadFont("Arial-Black-20.vlw");
  fuenteb = createFont("BellMTBold.vlw",30);
  elcontador = 0;
  activarboton = "falso";
  logicaestado = "estadoinicial";
  suma = 1;
  push();
  fill(0);
  texto3 = "Rebelión en la granja es una fábula de George\n Orwell que narra la historia de los animales de \n la Granja Manor, quienes se rebelan contra su\n dueño humano, el Sr. Jones, en busca de \n libertad y auto-gobierno. Al principio, liderados \n por los cerdos Snowball y Napoleón, los \n animales expulsan a Jones y establecen \n un sistema de gobierno basado en los \n principios de la Animalidad.";
  Movimtext = 1;
  pop();
  texto4 = "Sin embargo, la promesa de igualdad \n y justicia pronto se desvanece cuando \n  Napoleón, en busca de poder, expulsa a \n Snowball y establece una dictadura.\n Los cerdos comienzan a vivir lujosamente \n mientras el resto de los animales trabajan \n arduamente. La ley Todos los animales \n son iguales, pero algunos animales son \n más iguales que otros; resume la \n corrupción del nuevo régimen.";
  Movimtext2 = 5;
  texto5 = "La granja sufre cambios drásticos mientras \n Napoleón se alía con los humanos, \n traicionando los ideales de la rebelión. Se \n convierte en una tiranía donde la propaganda y \n la represión mantienen el control sobre \n los animales. Los cerdos se vuelven \n indistinguibles de los humanos que inicialmente\n oprimieron a los animales.";
  Movimtext3 = 240;
  texto7 = "Al final, los animales observan con desilusión cómo\n los cerdos se han convertido en opresores. \n La novela refleja la corrupción del  poder y \n cómo los ideales revolucionarios pueden ser distorsionados\n por aquellos que buscan el control absoluto. \n Es una crítica a los regímenes totalitarios \n y a la naturaleza corrupta del poder humano.";
  Chau = 10;
  Pan = 1;

  // Animaciones Pantalla Final
  Star = random(10, 40);
  Sol = random(-150, 0);
  Sol2 = random(-150, 0);
  Sol3 = random(-150, 0);
  Sol4 = random(-150, 0);
  Sol5 = random(-150, 0);
  Sol6 = random(-150, 0);
  Sol7 = random(-150, 0);
  Sol8 = random(-150, 0);
  Sol9 = random(-150, 0);
  Sol10 = random(-150, 0);
  Sol11 = random(-150, 0);
  Sol12 = random(-150, 0);
  Sol13 = random(-150, 0);
  Sol14 = random(-150, 0);
  Sol15 = random(-150, 0);
  Sol16 = random(-150, 0);
  Sol17 = random(-150, 0);
  Sol18 = random(-150, 0);
  Sol19 = random(-150, 0);
}

void draw() {
  // Contador
  println("Contador:");
  println(elcontador);

  // Configuraciones Boton
  if (mousePressed) {
    if (mouseX > 0 && mouseX < 100 && mouseY > 380 && mouseY < 480) {
      activarboton = "verdadero";
    }
  }

  if (activarboton == "verdadero") {
    elcontador = elcontador + suma;
  }

  // Configuracion estado inicial
  if (logicaestado == "estadoinicial") {
    // Imagen Inicio
    image(Pig0, 0, 0, 640, 480);

    // Boton Inicio
 if (mouseX > 0 && mouseX < 100 && mouseY > 380 && mouseY < 480) {
   fill(150); // Cambia el color a gris cuando el mouse está sobre el botón
 } else {
   fill(255); // De lo contrario, el color es blanco
 }
    rect(0, 380, 100, 100);
    fill(0, 255, 0);
    textSize(30);
    text("Iniciar", 7, 440);
    
    // Titulos
    textSize(texto1);
    text("Rebelion en La Granja", texto1 + 50, 300);
    
    text("TP1", 279, texto1);
    if (texto1 <= 50) {
      texto1 = texto1 + 0.5;
    }
    
    if (activarboton == "verdadero") {
      logicaestado = "estadodos";
      elcontador = 0; // Reiniciar el contador al cambiar de estado
    }
  } else if (logicaestado == "estadodos") {
    image(Pig1, 0, 0, 640, 480);
        textFont(fuenteb);
//Rectángulo semitransparente detrás del texto
    fill(255, 255, 255, 60); // Blanco con opacidad
rect(0, 0, width, height); // Rectángulo que cubre toda la pantalla

    fill(0);
    text(texto3, 0, Movimtext++);

    if (elcontador > 200) {
      logicaestado = "estadotres";
    }
  } else if (logicaestado == "estadotres") {
    image(Pig2, 0, 0, 640, 480);
    textFont(fuenteb);
    //Rectángulo semitransparente detrás del texto
    fill(255, 255, 255, 60); // Blanco con opacidad
rect(0, 0, width, height); // Rectángulo que cubre toda la pantalla

    fill(23, 18, 198);
    text(texto4, Movimtext2++, 100);

    if (elcontador > 400) {
      logicaestado = "estadocuatro";
    }
  } else if (logicaestado == "estadocuatro") {
    image(Pig3, 0, 0, 640, 480);
    textFont(fuenteb);
    //Rectángulo semitransparente detrás del texto
    fill(255, 255, 255, 60); // Blanco con opacidad
rect(0, 0, width, height); // Rectángulo que cubre toda la pantalla

    fill(200, 20, 200);
    text(texto5, 0, Movimtext3--);

    if (elcontador > 600) {
      logicaestado = "estadosiete"; // Ir directamente a estadosiete
    }
  } else if (logicaestado == "estadosiete") {
    image(Pig6, 0, 0, 640, 480);
    textFont(fuenteb);
    //Rectángulo semitransparente detrás del texto
    fill(255, 255, 255, 60); // Blanco con opacidad 
rect(0, 0, width, height); // Rectángulo que cubre toda la pantalla
    fill(0, 255, 255);
    text(texto7, Pan / 2, 50);
    Pan = Pan + Chau;
    if (Pan >= 400) Pan = random(0, 400);

    if (elcontador > 800) { // Ajustar el valor para el cambio de pantalla
      logicaestado = "estadofinal";
    }
  } else if (logicaestado == "estadofinal") {
    image(Pig7, 0, 0, 640, 480);
    R = random(255);
    G = random(255);
    B = random(255);
    fill(R, G, B);
    textSize(20);
    push();
    textFont(fuentea);
    text("Profesor: \n Tobias Albirosa \n Comision: 2 ", 373, 24);
    text("Presentacion realizada por: \n Ailen Avanzini ", 7, 324);
    pop();

    // Configuracion de Animaciones
    Sol = Sol + Chau;
    Sol2 = Sol2 + Chau;
    Sol3 = Sol3 + Chau;
    Sol4 = Sol4 + Chau;
    Sol5 = Sol5 + Chau;
    Sol6 = Sol6 + Chau;
    Sol7 = Sol7 + Chau;
    Sol8 = Sol8 + Chau;
    Sol9 = Sol9 + Chau;
    Sol10 = Sol10 + Chau;
    Sol11 = Sol11 + Chau;
    Sol12 = Sol12 + Chau;
    Sol13 = Sol14 + Chau;
    Sol14 = Sol14 + Chau;
    Sol15 = Sol15 + Chau;
    Sol16 = Sol16 + Chau;
    Sol17 = Sol17 + Chau;
    Sol18 = Sol18 + Chau;
    Sol19 = Sol19 + Chau;

    if (Sol > 400) Sol = random(-150, 0);
    if (Sol2 > 400) Sol2 = random(-150, 0);
    if (Sol3 > 400) Sol3 = random(-150, 0);
    if (Sol4 > 400) Sol4 = random(-150, 0);
    if (Sol5 > 400) Sol5 = random(-150, 0);
    if (Sol6 > 400) Sol6 = random(-150, 0);
    if (Sol7 > 400) Sol7 = random(-150, 0);
    if (Sol8 > 400) Sol8 = random(-150, 0);
    if (Sol9 > 400) Sol9 = random(-150, 0);
    if (Sol10 > 400) Sol10 = random(-150, 0);
    if (Sol11 > 400) Sol11 = random(-150, 0);
    if (Sol12 > 400) Sol12 = random(-150, 0);
    if (Sol13 > 400) Sol13 = random(-150, 0);
    if (Sol14 > 400) Sol14 = random(-150, 0);
    if (Sol15 > 400) Sol15 = random(-150, 0);
    if (Sol16 > 400) Sol16 = random(-150, 0);
    if (Sol17 > 400) Sol17 = random(-150, 0);
    if (Sol18 > 400) Sol18 = random(-150, 0);
    if (Sol19 > 400) Sol19 = random(-150, 0);

    // Animaciones Pantalla Final
    push();
    fill(3, 255, 253);
    noStroke();
    quad(309, 52, 335, 19, 360, 52, 335, 80);
    rectMode(CENTER);
    square(335, 50, Star);
    Star = random(10, 40);
    pop();
    stroke(255);
    strokeWeight(3);
    point(20, Sol + 10);
    point(40, Sol2 + 10);
    point(60, Sol3 + 10);
    point(80, Sol4 + 10);
    point(100, Sol5 + 10);
    point(120, Sol6 + 10);
    point(140, Sol7 + 10);
    point(160, Sol8 + 10);
    point(180, Sol9 + 10);
    point(200, Sol10 + 10);
    point(220, Sol11 + 10);
    point(240, Sol12 + 10);
    point(260, Sol13 + 10);
    point(280, Sol14 + 10);
    point(300, Sol15 + 10);
    point(320, Sol16 + 10);
    point(340, Sol17 + 10);
    point(360, Sol18 + 10);
    point(380, Sol19 + 10);

    // Boton Reinicio
 if (mouseX > 550 && mouseX < 650 && mouseY > 380 && mouseY < 480) {
  fill(150); // Cambia el color a gris cuando el mouse está sobre el botón
 } else {
  fill(255); // De lo contrario, el color es blanco
 }    ellipse(590, 430, 90, 90); // Dibuja un círculo en lugar de un rectángulo
  fill(0, 255, 255);
  text("Reiniciar", 555, 438); // Ajusta la posición del texto
  }
}

void mousePressed() {
  if (logicaestado == "estadofinal") {
    if (mouseX > 550 && mouseX < 640 && mouseY > 380 && mouseY < 480) {
      logicaestado = "estadoinicial";
      elcontador = 0;
      activarboton = "falso";
      texto1 = 0;
      Movimtext = 0;
      Movimtext2 = 0;
      Movimtext3 = 240;
      rectMode(CORNER);    }
  }
}
