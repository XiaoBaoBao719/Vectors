
class PVector{
  
  float x, y;
  float speedX, speedY;
  
  PVector(float _x, float _y){
    x = _x;
    y = _y;
  }
  
  void add(PVector v){
    y = y + v.y;
    x = x + v.x;
  }
}
