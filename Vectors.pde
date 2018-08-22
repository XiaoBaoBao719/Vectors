//float x, y;
float radius;
//float speedX, speedY;
float accelX, accelY;
//int directionX, directionY;

PVector location;
PVector velocity;


void setup(){
  
  size(800, 600, P3D);
  lights();
  radius = random(30, 50);
  //x = width / 2;
  //y = height / 2;
  //speedX = 3.5;
  //speedY = 3;
  location = new PVector(width / 2, height / 2);
  velocity = new PVector(5, 8);
  
  //directionX = 1;
  //directionY = 1;
}

void draw(){
   //background(0);
   fill(100, 15);
   rect(0, 0, width, height);
   noStroke();
   
   /*adds the velocity vector components onto the 
   location vector in order to update the location
   x and y positions of the ball */
   
   location.add(velocity);
   
   if((location.x < 0) || (location.x > width)){
     //directionX *= -1;
     velocity.x *= -1;
   }
   if((location.y < 0) || (location.y > height)){
     //directionY *= -1; 
     velocity.y *= -1;
   }
   pushMatrix();
   //fill(255);
   noFill();
   stroke(255);
   translate(location.x, location.y);
   sphere(radius);
   //ellipse(location.x, location.y, radius, radius);
   popMatrix();
}
