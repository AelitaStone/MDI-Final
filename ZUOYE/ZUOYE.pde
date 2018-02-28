int mode=0;
PImage pic;
PImage img;
PImage pho;
PImage pap;
PImage nnn;
PImage mmm;
PImage hhh;
PImage zzz;
PImage sss;
PImage kkk;
PImage ggg;
PImage hkk;
PImage lyr;
PImage lml;
PImage zxx;
PImage zle;
PFont myFont;

import processing.sound.*;
SoundFile someMusicFile;
import processing.video.*;
Movie someMovieFile;
boolean outBreak = false, playOnce = true;
void setup() {
  fullScreen();
  setupLeap();
  smooth();
  //background(#E6E6FA);
  pic=loadImage("timg-43.jpeg");
  img=loadImage("timg-45.jpeg");
  pho=loadImage("结萝.jpeg");
  pap=loadImage("龍葵.jpeg");
  nnn=loadImage("月如.jpeg");
  mmm=loadImage("蓝屏惊喜.jpeg");
  hhh=loadImage("梦璃.jpeg");
  zzz=loadImage("紫萱.jpeg");
  sss=loadImage("姑姑.jpeg");
  kkk=loadImage("背景.jpeg");
  ggg=loadImage("all.jpeg");
  hkk=loadImage("龙葵.jpeg");
  lyr=loadImage("林月如.jpeg");
  lml=loadImage("柳梦璃.jpeg");
  //zxx=loadImage("紫萱姐.jpeg");
  zle=loadImage("赵灵儿.jpeg");
  someMusicFile = new SoundFile(this, "骆集益-回梦游仙.mp3");
  someMusicFile.play();
  myFont=createFont("你可还认识这些人.ttf", 100);
  textFont(myFont);
  someMovieFile = new Movie(this, "芊芊.mp4");
}

void draw() {
  switch(mode) {
  case 0://if(mode=0{do that!})
    //do something
    loadMode();
    break;

  case 1:
    blankMode();
    break;

  case 2://if(mode=2){do that!}
    //do something
    startMode();
    break;

  case 3://if(mode=3){do that!}
    //do something
    chooseMode();
    break;

  case 4:
    airMode();
    break;

  case 5://if(mode=5){do that!}
    //do something
    endMode();
    break;

  case 6:
    noMode();
    break;

  case 7://if(mode=6){do that!}
    //do something
    endingMode();
    break;

  case 8:
    boomMode();
    break;

  case 9:
    mmpMode();
    break;

  case 10:
    continueMode();
    break;

  case 11:
    lastMode();
    break;

  case 12:
    kongMode();
    break;

  case 13:
    allMode();
    break;

  case 14:
    choosenMode();
    break;

  case 15:
    hkMode();
    break;

  case 16:
    lyrMode();
    break;

  case 17:
    lmlMode();
    break;

  case 18:
    zxMode();
    break;

  case 19:
    zleMode();
    break;

  case 20:
    vrMode();
    break;

case 21:
    qqqMode();
    break;
  case 22:
    finishMode();
    break;
  }
}

void loadMode() {//0
  image(pic, 0, 0);
  fill(0);
  textAlign(CENTER);
  textSize(50);
  noStroke();
  text("你可还认识这些人", width/2, height/2);
  if (outBreak) {
    someMusicFile.play();
    outBreak = false;
  }
}


void mousePressed() {
  if (mode==0) {
    mode=1;
  }
  if (mode==2) {
    mode=4;
  }
  if (mode==3) {
    mode=6;
  }
  if (mode==8) {
    mode=0;
  }
  if (mode==7) {
    mode=9;
  }
  if (mode==10) {
    mode=11;
  }
  if (mode==13) {
    mode=14;
  }
  if (mode==15) {
    mode=20;
  }
  if (mode==16) {
    mode=20;
  }
  if (mode==17) {
    mode=20;
  }
  if (mode==18) {
    mode=20;
  }
  if (mode==19) {
    mode=20;
  }
  if (mode==21) {
    mode=22;
  }
}



void startMode() {//2
  image(pho, 0, 0);
  //background(#F5FFFA);
  textAlign(CENTER);
  textSize(50);
  noStroke();
  text ("点击继续", width/2, height/2+450);
}

void blankMode() {//1
  image(pho, 0, 0);
}

void mouseReleased() {
  if (mode==1) {
    mode=2;
  }
  if (mode==4) {
    mode=3;
  }
  if (mode==6) {
    mode=5;
  }
  //if (mode==21){
  //mode=22;
//}
}



void chooseMode() {//3
  image(img, 0, 0);
  //background(#F5FFFA);
  fill(0);
  textAlign(CENTER);
  textSize(60);
  noStroke();
  text ("你还记得她是谁吗？", width/2, height/2);
}

void airMode() {//4
  image(img, 0, 0);
}

void endMode() {//5
  image(pap, 0, 0);
  //background(#F4F4F4);
  fill(0);
  textAlign(CENTER);
  textSize(60);
  noStroke();
  text ("或者是这样的她", width/2, height/2);
  text ("1.是 ", width/2-60, height/2+80);
  text ("2.否 ", width/2+60, height/2+80);
}

void noMode() {//6
  image(pap, 0, 0);
}  

void endingMode() {//7
  image(nnn, 0, 0);
  //background(#F4F4F4);
  fill(0);
  textAlign(CENTER);
  textSize(60);
  noStroke();
  text ("那么这位呢？", width/2, height/2);
}

void boomMode() {//8
  image(mmm, 0, 0);
  someMusicFile.stop();
  outBreak = true;
}

void mmpMode() {//9
  image(hhh, -40, 0);
  fill(0);
  textAlign(CENTER);
  textSize(60);
  noStroke();
  text ("这位你也知道吗？", width/2, height/2);
  text ("A.知道 ", width/2-100, height/2+80);
  text ("B.不知道 ", width/2+100, height/2+80);
}

void continueMode() {//10
  image(zzz, -40, 0);
  fill(0);
  textAlign(CENTER);
  textSize(60);
  noStroke();
  text ("这位也许你也并不陌生", width/2, height/2);
}

void lastMode() {//11
  image(sss, -80, 0);
  fill(0);
  textAlign(CENTER);
  textSize(60);
  noStroke();
  text ("那这最后一位呢？", width/2, height/2);
  text ("Y/N ", width/2, height/2+60);
}

void kongMode() {//12
  image(kkk, 0, 0);
}

void allMode() {//13
  image(kkk, 0, 0);
  fill(0);
  textAlign(CENTER);
  textSize(60);
  noStroke();
  text ("看了那么多，谁才是你心目中的女神？", width/2+60, height/2);
}

void choosenMode() {//14
  image(ggg, 0, 0);
  fill(0);
  textAlign(CENTER);
  textSize(60);
  noStroke();
  text ("龙葵", width/2, height/2-150);
  text ("林月如", width/2, height/2-50);
  text ("柳梦璃", width/2, height/2+50);
  text ("紫萱", width/2, height/2+150);
  text ("赵灵儿", width/2, height/2+250);
}

void hkMode() {//15
  image(hkk, -200, -100);
  fill(0);
  textAlign(CENTER);
  textSize(100);
  noStroke();
  text ("龙葵", width/2, height/2);
}

void lyrMode() {//16
  image(lyr, 0, 0);
  fill(0);
  textAlign(CENTER);
  textSize(100);
  noStroke();
  text ("林月如", width/2, height/2);
}

void lmlMode() {//17
  image(lml, -200, -80);
  fill(0);
  textAlign(CENTER);
  textSize(100);
  noStroke();
  text ("柳梦璃", width/2, height/2);
}

void zxMode() {//18
  image(zzz, -100, 0);
  fill(0);
  textAlign(CENTER);
  textSize(100);
  noStroke();
  text ("紫萱", width/2, height/2);
}

void zleMode() {//19
  image(zle, -100, -100);
  fill(0);
  textAlign(CENTER);
  textSize(100);
  noStroke();
  text ("赵灵儿", width/2, height/2);
}

void vrMode() {//20
  someMusicFile.stop();
  //someMovieFile = new Movie(this, "【芊芊】仙剑奇侠传一三混剪_超清.mp4");
  image(someMovieFile, 0, 0, width, height);
  if (playOnce) {
    someMovieFile.play();
    playOnce = false;
  }
}

void movieEvent(Movie m) {
  m.read();
}

void qqqMode(){//21
background(0);
}
void finishMode() {//22
  background(#000000);
  fill(255);
  textAlign(CENTER);
  textSize(200);
  noStroke();
  text ("全剧终", width/2, height/2);
}

void keyPressed() {
  if ((key=='1')) { //ltap
    if (mode==5) {
      mode=7;
    }
  }
  if ((key=='2')) {//rtap
    if (mode==5) {
      mode=8;
    }
  }
  if ((key=='A')||(key=='a')) {//ltap
    if (mode==9) {
      mode=10;
    }
  }
  if ((key=='B')||(key=='b')) {//rtap
    if (mode==9) {
      mode=8;
    }
  }
  if ((key=='Y')||(key=='y')) {
    if (mode==11) {
      mode=13;
    }
  }
  if ((key=='N')||(key=='n')) {
    if (mode==11) {
      mode=8;
    }
  }
  if ((key=='k')||(key=='K')) {
    if (mode==14) {
      mode=15;
    }
  }
  if ((key=='r')||(key=='R')) {
    if (mode==14) {
      mode=16;
    }
  }
  if ((key=='L')||(key=='l')) {
    if (mode==14) {
      mode=17;
    }
  }
  if ((key=='x')||(key=='X')) {
    if (mode==14) {
      mode=18;
    }
  }
  if ((key=='e')||(key=='E')) {
    if (mode==14) {
      mode=19;
    }
  }
}