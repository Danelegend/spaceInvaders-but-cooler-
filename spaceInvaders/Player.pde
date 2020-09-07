class Player {
  
  int x, y, xSpeed, life, pHeight, pWidth;
  
  Player() {
    
  }
  
  void playerDirection(int direction) {
      //Direction = 1 ; Left
      //Direction = 2 ; Right
      //Direction = 0 ; Stop moving
    
      if (direction == 1) {
         xSpeed = 2;  
      }
      
      if (direction == 2) {
         xSpeed = -2;     
      }
    
      if (direction == 0) {
         xSpeed = 0; 
      }
    
  }
    
    void move() {
       x = x + xSpeed; 
    }
  
}
