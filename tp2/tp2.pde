//rocio zapata 
//comision 2
//94748/5

PImage  grilla;
int correccion=0;
 
 void setup(){ 
   size (800 , 400);
   grilla = loadImage ("grilla.jpeg");
   noStroke();
   
   }
   
   void draw(){
     image (grilla, 0 ,0, 400, 400);
     grilla(400 , 0 , 15 , 40) ;
     grilla(450 , 50 , 20 , 15 ) ;
     grilla (450, mouseY-150, 20 , 15 );
     
   }

   void grilla(int x, int y,int t, int c) {
     
    for(int i=0; i<c; i++) {
      for(int j=0; j<c; j++){
        if((i+j)%2==0){
          fill(0, 104 , 139);
    } else {
      fill(31, 200, 131);
    }
    rect (x+i*t, y+j*t, t, t) ;
      }
      }
      for (int i=0; i<c+1; i++){
      for (int j=0; j<c+1; j++){
        
        if((i+j)%10==0){
          correccion=0;
        }else if ((i+j)%10==5){
          correccion = 255;
        }
        if((i+j)%2==0){
          fill(255-correccion);
        }else {
          fill(0+correccion);
        }
        circle(x+i*t, y+j*t, t/3);
      }
      }
   }
     float calcularDistMapMouse( int x2, int y2 , int escMin ,int escMax ) {
     float d = dist ( mouseX , mouseY , x2  , y2 ) ;
     float m = map ( d , 0 , 565 , escMin , escMax ) ;
        
       return m ;
    }
   
   
  // void resetearVariables () {
 //   bg = color (0);
  //   t = height / 10;
  // }
     
   
   
   
