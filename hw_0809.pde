int numPos = 10;
int [] xPos = new int[numPos];
int [] yPos = new int[numPos];
int r=1;
int j = 0;
int change;

void setup(){
size (500,500);
frameRate(100);
noStroke();
rectMode(CENTER);
background(255);
change = mouseX;
smooth();

for(int i=0;i<numPos;i++){
xPos[i]=width/(numPos+1)*(i+1);
}

for (int j=0;j<numPos;j++){
yPos[j]=height/(numPos+1)*(j+1);
}

for(int i=0;i<numPos;i++){
fill(0,random(256),random(256));
  for(int j=0;j<numPos;j++){
      rect(xPos[i],yPos[j],r,r);
    }
  }
}
void draw(){
if(change!=mouseX){
  background(255);
  fill(255);
  strokeWeight(random(10)); 
  stroke(random(50),random(250),150);
  int b = (int)random(300);
  rect(250,250,b,b);
 
 noStroke();

for(int i=0;i<numPos;i++){
fill(0,random(256),random(256));
  for(int j=0;j<numPos;j++){
      int a = (int)random(10);
      rect(xPos[i],yPos[j],a,a);
    }
  }
}
change = mouseX;
}