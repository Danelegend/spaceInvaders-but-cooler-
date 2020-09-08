Player p;

void setup() {
   size(500,500);
   background(0,0,0);
   p = new Player();
}

void draw() {
  clear();
  p.draw();
}

void keyPressed() {
   if (key == 'a' || key == 'A'){
      p.playerDirection(2);
   }
   
   if (key == 'd' || key == 'D') {
      p.playerDirection(1); 
   }
   
   if (key == 'r') {
      p.reset(); 
   }
   
   if (key == ' '){
      p.shoot(); 
   }
}

void keyReleased() {
  if (key == 'a' || key == 'A'){
      p.playerDirection(0);
   }
   
   if (key == 'd' || key == 'D') {
      p.playerDirection(0); 
   }
   
   if (key == ' ') {
      p.allowShoot(); 
   }
   
}


class Player {
  
  int x, y, xSpeed, life, pHeight, pWidth;
  int resetX;
  boolean shoot;
  
  Player() {
    x = int(width/2 - pWidth/2);
    resetX = x;
    life = 3;
    shoot = true;
    xSpeed = 0;
    y = height*7/8;
    pWidth = 50;
  }
  
  void draw() {
    fill(255, 255, 255);
    rect(x, y, pWidth, 25);
    
    if (xSpeed == -2 && x < 0) {
       xSpeed = 0; 
    }
    
    if (xSpeed == 2 && x + pWidth > width) {
       xSpeed = 0; 
    }
    
    x = x + xSpeed;
  }
  
  void decreaseLife() {
     if (life == 0) {
       //GameOver    
     }
     
     life = life--; 
  }
  
  void reset() {
     x = resetX;
  }
  
  void playerDirection(int direction) {
      //Direction = 1 ; Right
      //Direction = 2 ; Left
      //Direction = 0 ; Stop moving
        
      if (direction == 1 && x + pWidth < width) {
         xSpeed = 2;  
      }
            
      if (direction == 2 && x > 0) {
         xSpeed = -2;     
      }
    
      if (direction == 0) {
         xSpeed = 0; 
      }
    
  }
    
    void move() {
       x = x + xSpeed; 
    }
    
    void shoot() {
       //Bullet bullet = new Bullet(x);
       //bullet.fireUp();
       println("shoot");
       shoot = false;
    }
    
    void allowShoot() {
       shoot = true; 
    }
  
}
