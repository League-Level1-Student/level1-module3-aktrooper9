PImage background;
PImage frog;
int x = 40;
int y= 530;
int carx = 350;
int carly= 110;
int carry= 265;
PImage carleft;
PImage carright;
Car car1 = new Car(carx,carly,140,3);
Car car2 = new Car(carx,190,140,4);
Car car3 = new Car(carx,carry,140,5);
Car car4 = new Car(carx,340,140,6);
Car car5 = new Car(carx,430,140,7);
void setup(){
size(800, 600);
 background= loadImage("froggerBackground.png"); 
       background.resize(800,600);
       frog = loadImage("frog.png");
       frog.resize(70,70);
        carleft = loadImage("carLeft.png");
       carleft.resize(140,140);
       carright = loadImage("carRight.png");
       carright.resize(140,140);
       
}

void draw(){
  if(y==100){
    y=530;
  
  }
  intersects(car1);
  intersects(car2);
  intersects(car3);
   intersects(car4);
      intersects(car5);
  image (background,0,0);
 image(frog,x,y);
car1.display();
car2.display();
car3.display();
car4.display();
car5.display();
  

}
 
boolean intersects(Car car) {
 if ((y > car.getY() && y < car.getY()+50) &&
               (x > car.getX() && x < car.getX()+car.getSize())) {
 x=40;
 y=530;
                  return true;
 
 }
 else  {
  return false;
}
}
void keyPressed(){
    if(key == CODED){
        if(keyCode == UP)
        {
         y-=10;   //Frog Y position goes up
        }
        else if(keyCode == DOWN)
        {
           y+=10; 
            //Frog Y position goes down 
        }
        else if(keyCode == RIGHT)
        {
          x+=10;
            //Frog X position goes right
        }
        else if(keyCode == LEFT)
        {
          x-=10;
            //Frog X position goes left
        }
    }
}

class Car{
  
int x;
int y;
int size;
int speed;
Car(int x, int y, int size, int speed){
this.x = x; 
this.y = y;
this.size= size;
this.speed=speed;
 
  }

void display(){
image(carleft, x,y);
  if(x<0){
  x=width;
  }
  else{
  x-=speed;
  
  }
  }
  
  int getY(){
  return this.y;
  }
  int getX(){
  return this.x;
  }
  int getSize(){
  return this.size;
  }
//image(carright, carrx,carry);
}
