class Ball{

  //variables or parameters of the object
  float diam;
  float x, y;
  color f, s;
  
  //Constructor
  Ball(float _x, float _y, float _diam){
    x = _x;
    y = _y;
    diam = _diam;
    f = color(255, 0, 255);
    s = color(0, 255, 0);
  }
  
    Ball(float _x, float _y, float _diam, color _f, color _s){
    x = _x;
    y = _y;
    diam = _diam;
    f = _f;
    s = _s;
  }
  
  //Methods (functions specific to the object)
  void display(){
    ellipse(x, y, diam, diam);
    fill(f);
    stroke(s);
  }
  
  void move(float mx, float my){
  x = mx;
  y = my;
}

}
