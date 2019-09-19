import controlP5.*;
ControlP5 cp5;
PImage img;

Textlabel Floor;
int n = 0;
int i;
boolean go = false;
boolean up = true;
int cf = 1;
int nf = 8;
boolean pressed[] = {false,false,false,false,false,false,false,false};
int x = 1;

public void setup(){
cp5 = new ControlP5(this);
size(200,400);
gui();
}

public void draw(){
background(51);
if (go){
  x = cf;
  n = 0;
  getNext();
  if (nf > cf){
    cf++;
    pressed[cf-1] = false;
  }
  else if (nf < cf){
    cf--;
    pressed[cf-1] = false;
  }
  else {check();}
}

else {go = !go;}

if (!go){
  check();
}


Floor = cp5.addTextlabel("display")
    .setText(Integer.toString(cf))
    .setPosition(100,50)
    .setFont(createFont("Georgia",20))
    ;

}

void gui(){
cp5.addButton("f1")
  .setPosition(60,220)
  .setSize(30,30)
  ;
cp5.addButton("f2")
  .setPosition(60,180)
  .setSize(30,30)
  ;
cp5.addButton("f3")
  .setPosition(60,140)
  .setSize(30,30)
  ;
cp5.addButton("f4")
  .setPosition(60,100)
  .setSize(30,30)
  ;
cp5.addButton("f5")
  .setPosition(140,220)
  .setSize(30,30)
  ;
cp5.addButton("f6")
  .setPosition(140,180)
  .setSize(30,30)
  ;
  cp5.addButton("f7")
  .setPosition(140,140)
  .setSize(30,30)
  ;
cp5.addButton("f8")
  .setPosition(140,100)
  .setSize(30,30)
  ;
  
}
 
 
public void getNext(){
  if (up && x == 9 && n == 0){
    x = cf;
    up = !up;
    n = 1;
  }
  
  else if (!up && x == 0 && n == 0){
    x = cf;
    up = !up;
    n = 1;
  }
  
  else if (up && x < 9){
    if (pressed[x-1]==true){
      nf = x;
      return;
    }
    else {
      x++;
      getNext();
    }
  }
  
  else if (!up && x > 0){
    if (pressed[x-1]==true){
      nf = x;
      return;
    }
    else {
      x--;
      getNext();
    }
  }
  
  else {go = !go;}
}

public void check(){
  for (i=0;i<8;i++){
    if (pressed[i] == true) go = true;
  }
}


public void f1() {
  if (cf != 1){
    pressed[0] = true;
    go = true;
  }
}

public void f2() {
  if (cf != 2){
    pressed[1] = true;
    go = true;
  }
}

public void f3() {
  if (cf != 3){
    pressed[2] = true;
    go = true;
  }
}

public void f4() {
  if (cf != 4){
    pressed[3] = true;
    go = true;
  }
}

public void f5() {
  if (cf != 5){
    pressed[4] = true;
    go = true;
  }
}

public void f6() {
  if (cf != 6){
    pressed[5] = true;
    go = true;
  }
}

public void f7() {
  if (cf != 7){
    pressed[6] = true;
    go = true;
  }
}

public void f8() {
  if (cf != 8){
    pressed[7] = true;
    go = true;
  }
}
