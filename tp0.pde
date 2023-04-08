//comision2
//rocio zapata
PImage mianimal;
void setup () {
size( 800 , 400 ) ;
mianimal = loadImage ( "mianimal.jpg" ) ;
}
void draw () {
  background (60) ;
image( mianimal , 400 , 0 ) ;

//pico de  pinguino
strokeWeight (20) ;
stroke (247 , 135 , 30) ;
line (200 , 130 , 70 , 80) ;
noStroke () ;
fill (4 , 3 , 21 ) ;
triangle (200 , 100 , 70 , 70 , 200 , 200) ;
stroke(165);
strokeWeight(2);
line(167, 122,62,75);

//cuerpo pinguino
fill (255) ;
noStroke () ;
fill ( 255 , 136 , 57) ;
ellipse (230 , 350 , 200 , 300) ; 
ellipse (283 , 350 , 130 , 200) ;
ellipse (220 , 230 , 120 , 140) ;

//cara pinguino y muucho detalle de ojo
fill (4 , 3 , 21 ) ;
circle (230 , 150 , 130) ;
fill (0) ;
circle (230 , 130 , 40) ;
fill (255);
ellipse (230 , 130 , 30 , 15) ;
fill (0 ) ;
circle (225 , 135 , 10) ;

// manchitas pinguino
fill (247 , 135 , 30 ) ;
circle (270 , 180 , 25) ;
circle (260 , 190 , 25) ;
circle (250 , 200 , 25) ;
circle (240 , 210 , 15) ;
circle (230 , 215 , 15) ;
fill (252 , 84 , 0 ) ;
circle (260 , 180 , 25) ;
circle (250 , 190 , 25) ;
circle (240 , 200 , 25) ;
circle (230 , 210 , 15) ;
circle (220 , 215 , 15) ;
ellipse(196,217,70,10) ;
triangle(160,217,172,183,220,215) ;
 
fill (247 , 135 , 30 ) ;
ellipse(180,225,40,30);
circle ( 190, 225 , 10 ) ;
circle ( 195, 225 , 10 ) ;
circle ( 200, 225 , 15 ) ;
circle ( 205, 225 , 10 ) ;
circle ( 210, 225 , 10 ) ;
circle ( 215, 225 , 10 ) ;
circle ( 220, 225 , 10 ) ;
circle ( 225, 225 , 10 ) ;
circle (225, 232, 11);

ellipse( 275, 150,30,50);

// manchitas grises del pinguino
fill (200) ;
circle ( 270 , 240 , 55) ;
circle ( 280 , 250 , 55) ;
circle ( 280 , 260 , 60) ;
circle ( 285 , 270 , 65) ;
circle ( 290 , 280 , 65) ;
circle ( 300 , 290 , 65) ;
circle ( 300 , 300 , 65) ;
circle ( 310 , 310 , 65) ;
circle ( 305 , 320 , 65) ;
circle ( 316 , 330 , 65) ;
circle ( 316 , 340 , 65) ;
circle ( 316 , 350 , 65) ;
circle ( 308 , 360 , 65) ;
circle ( 316 , 370 , 65) ;
circle ( 312 , 380 , 65) ;
circle ( 313 , 380 , 65) ;
circle ( 316 , 390 , 65) ;
circle ( 314 , 390 , 65) ;
circle ( 314 , 395 , 65) ;
circle ( 314 , 395 , 65) ;


//linea negra de pinguino
strokeWeight(20);
stroke (0) ;
line ( 270 , 210 , 230 , 220 ) ;
line (230 , 220 , 270 , 330 ) ;
line ( 270 , 330 , 270 , 400 ) ;
noStroke() ;
fill ( 255 , 136 , 57) ;
ellipse (200, 350, 145 , 248 ) ;




}
