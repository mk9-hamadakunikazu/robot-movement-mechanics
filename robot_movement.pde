float angle0=0;
float angle1=0;
float angle2=0;
float baseH =80;
float armL1=50;
float armL2=50;
float armW1=10;
float armW2=5;
float armb1=10;



void setup(){
  size(1200,1200,P3D);
  camera(100,100,200,0,0,0,0,0,-1);
  noStroke();
}

void draw(){
  
  background(255);
  
  if(keyPressed){
    if(key=='u'){
      for(float x=0;x<=45;x+=0.01){
        angle1 = angle2 + x;
        angle2 = angle2 - x;
      }
      for(float y=0;y<=45;y+=0.01){
        angle1 = angle1 + y;
      }
    }
  }
  
//base
rotateZ(radians(angle0));
translate(0,0,baseH/2);
fill(#000000);
box(10,10,baseH);

//1st link
translate(armL1/2-armW1/2,armW1/2+armW2/2,baseH/2-armb1/2);
rotateY(radians(angle1));
fill(#FF6633);
box(armL1,armW2,armb1);

//2nd Link
rotateY(radians(angle2));
translate(armL2/2+armL2/2-10,-armW2,0);
fill(#66CC00);
box(armL2,armW2,armb1);

}
