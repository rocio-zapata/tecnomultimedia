// rocio zapata
// 94748/5
// comision 2 animal
// tp1


//int estados;
String estado;
int c; //contador
PImage rabbit0 ;
PImage rabbit1 ;
PImage rabbit02 ;
PImage rabbit3 ;
PImage rabbit4 ;
PImage rabbit05 ;
PFont miFuentePorInterfaz ;
String text1 = " Los conejos son animales muy complejos \n por lo que hay que tener mucho \n cuidado con el tema alimentacion \n Estos deben llevar una dieta de al menos un \n 70% a 80% de Heno \n un 15% a 20% de Alimentos Frescos \n y un 15% a 10% o menos de Pienso";
String text2 = "Cada aimento mencionado aporta \n de diferente manera a su nutricion \n y cuidado, el Heno y lOS Alimentos frescos \n ayudan al desgaste de los dientes para que no crezcan \n tan rapido mientras que el Pienso no ayuda \n con eso y en grandes porciones \n acorta la vida del animal";
String text3 = "Tampoco pueden comer:Bananas, Higos, Chirimolla \n Palta, Melocoton, Papa \n Ajo, Cebolla, Legubres y ciertos tipos de Lechuga ";
String text4 = " Y si se van a tener de mascota \n es necesario tener en cuenta la alimentacion. \n Tambien mantener su jaula muy limpia.";

void setup() {
  
  size( 640, 480 );  //resolucion tp1
  textAlign( CENTER, CENTER );
  textSize( 45 );
  fill(0);
  
  rabbit0 = loadImage("rabbit0.jpg");
  rabbit1 = loadImage("rabbit1.jpg");
  rabbit02 = loadImage("rabbit02.jpg");
  rabbit3 = loadImage("rabbit3.jpg");
  rabbit4 = loadImage("rabbit4.jpg");
  rabbit05 = loadImage("rabbit05.jpg");
  miFuentePorInterfaz = loadFont ("AmericanTypewriter-CondensedBold-48.vlw") ;
  
 
  estado = "inicio";
  
  frameRate( 60 );
}

void draw() {
  //
  //MAQUINA DE ESTADOS --
  //

  println(frameCount);
   
  if ( estado.equals("inicio") ) {
    image(rabbit0, 0, 0);
    fill(255);
    textFont ( miFuentePorInterfaz) ;
    text( "ALIMENTACION DE CONEJOS", 340, 50 );
    fill(80, 247, 86);
    circle( width/2, height/4*3, 100 );
     
   
    //
  } else if (estado.equals("p1") ) {
    image(rabbit1, 0, 0);
    fill(255);
    textSize( 28 );
    text( text1 , frameCount , 150); 
 
    if (frameCount > width/2)
  frameCount = 320;
     
    //
    c++;  
    if( c >= 600 ){  
      estado = "p2";
      c = 0;  //RESET DE VARIABLE CONTADOR
      
    }
    //
  } else if (estado.equals("p2") ) {
    image(rabbit02, 0, 0); 
    textSize(22);
    text( text2, 130, frameCount - 300 );
   if (frameCount > 500 )
   frameCount = 500;
   
    //
    c++;  //suma 1 per frame
   if( c >= 300 ){  // 60fps * 5seg = 300
      estado = "p3";
      c = 0;  //RESET DE VARIABLE CONTADOR
    }
    //
  } else if (estado.equals("p3") ) {
    image(rabbit3, 0, 0);
    textSize (20);
    text( text3, frameCount - 500, 200 );
    if (frameCount > 800)
    frameCount = 820;
    
    c++;  
    if( c >= 840 ){  // 60fps * 5seg = 300
      estado = "p4";
      c = 0;  //RESET DE VARIABLE CONTADOR
    }
    //
  } else if (estado.equals("p4") ) {
    image(rabbit4, 0, 0);
    fill(255);
    text( text4, 320, frameCount - 800 );
    if(frameCount > 1040)
    frameCount = 1040;
    //
  c++;  //suma 1 per frame
    if( c >= 1041 ){  // 60fps * 5seg = 300
      estado = "p5";
      c = 0;  //RESET DE VARIABLE CONTADOR
    }   
    //
  } else if (estado.equals("p5") ) {  
    image(rabbit05, 0, 0);
    textSize(25);
    text("Adopte un conejo y sea feliz! gracias por ver.", 320, 80);
    text("regresar al inicio", 500, 180);
    fill(58, 160, 62);
    rect( 270, 190, 100, 60);
       
   
  }
  println( estado );
}

void mousePressed() {
  // circle( width/2, height/4*3, 50 );  <-- de acá salen los datos
  if( estado.equals("inicio") ){
    if( dist(width/2, height/4*3, mouseX, mouseY) < 50/2 ){
      estado = "p1";
    }
  }
  if( estado.equals("p6") ){
    if( dist(270, 190, mouseX, mouseY) < 50/2 ){
      estado = "inicio";
    }
  }
}
