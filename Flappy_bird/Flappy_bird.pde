PImage background;
PImage bird;
PImage top;
PImage bottom;
int x=250;
int y = 0;
int X=0;
int Y = 0;
int y1 = 800;
int pipeGap=200;
//int upperPipeHeight = 150;
int upperPipeHeight = (int) random(100, 400);
int lowerY = upperPipeHeight + pipeGap;
int score = 0;

void setup(){
  size(800, 800);
   background= loadImage("flappyBackground.jpg"); 
       background.resize(height,width);
    bird= loadImage("bird.png"); 
    bird.resize(50,50);
        top= loadImage("topPipe.png");
        top.resize(75,400);
        bottom= loadImage("bottomPipe.png");
        bottom.resize(75,400);


}

void draw(){
  upperPipeHeight = (int) random(100, 400);
  text("Score: "+score , 400, 50);
  if(intersectsPipes()==true){
  stop();
  }
  else{
  score++;
}
  
  
  image(background, 0, 0);
  image(bird, x, y);
  image(top,X,Y); 
  image(bottom,X,lowerY);
 
 if(mousePressed==true){
 for (int i = 0; i<2;i++){
 y-=10;
 }
 }
 
  if(y==640){
    stop(); 
  }
  else{
   y+=5;
  
  }
  if(X==0){
  
  X=800;


top.resize(75,upperPipeHeight);
bottom.resize(75,680-lowerY);
  }
  else{
  X-=1;
  }
}
boolean intersectsPipes() { 
         if (y < upperPipeHeight && x > X && x < (X+75)){
            return true; 
        }
        else if (y>lowerY && x > X && x < (X+75)) {
            return true; }
        else { return false; }
}
