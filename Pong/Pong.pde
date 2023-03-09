int Menu = 0;
int Hit_Counter = 0;
int Points1 = 0;
int Points2 = 0;
Boolean GoalHit = false;

Knap  K        = new Knap(800, 600, 200 , 100);
Arena A        = new Arena(200,100);
Ball B         = new Ball(700,300,20);

void setup(){
  size(1800,800);
  noStroke();
//////////////////////////////////////////////////////////////////////////////////////////////////////  
  
}

void draw(){
  clear();
  background(35, 44, 59);
  
//////////////////////////////////////////////////Hovedmenu//////////////////////////////////////////
  if(Menu == 0){
    K.Display();
    textSize(100);
    fill(255);
    text("ENHANCED PONG", 550, 300);
    if(mouseX > 800 && mouseX < 800 + 200 && 
       mouseY > 600 && mouseY < 600 + 100 && mousePressed){
      Menu ++;  
   }
  }
 ///////////////////////////////////////////////In-Game//////////////////////////////////////////////
    if(Menu == 1){
    A.Display();
    
 Ball.move();
 Ball.Display();
    
 }
}


void mousePressed(){
  K.Click();
}
void mouseReleased(){
  K.Release();
}
/*
void keyPressed(){
  if(keyCode == UP){
    PlayerRight.speedY=-3;
  }
  if(keyCode == DOWN){
    PlayerRight.speedY=3;
  }
  if(key == 'w'){
    PlayerLeft.speedY=-3;
  }
  if(key == 's'){
    PlayerLeft.speedY=3;
  }
}

void keyReleased(){
  if(keyCode == UP){
    PlayerRight.speedY=0;
  }
  if(keyCode == DOWN){
    PlayerRight.speedY=0;
  }
  if(key == 'w'){
    PlayerLeft.speedY=0;
  }
  if(key == 's'){
    PlayerLeft.speedY=0;
  }
}
*/
