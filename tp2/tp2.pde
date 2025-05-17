PImage imag1, imag2, imag3,botonIn,botonRein;
float posTX11, posTX12, posrect1,posrect2,alpha, alpha2, posTY21,posTX31,posTY32,posTX33,frame;
PFont fuente;
int segundos,anchoBot,altoBot,posXbot,posYbot,anchoBotIn, altoBotIn, posXbotIn,posYbotIn;
boolean inicio;
void setup(){
  size(640, 480);
  imag1= loadImage("imagen_1.jpg");
  imag2= loadImage("imagen_2.jpg");
  imag3= loadImage("imagen_3.jpg");
  botonRein= loadImage("boton.png");
  botonIn= loadImage("boton_2.png");
  posTX11=-40;
  posTX12=-250;
  fuente= loadFont("AntiqueOliveStd-NordItalic-48.vlw");
  alpha=255;
  posTY21=520;
  alpha2=0;
  posrect1=-0;
  posrect2=-80;
  posTX31=-20;
  posTY32=-40;
  posTX33=710;
  segundos=0;
  frame=0;
  anchoBot=105;
  altoBot=45;
  posXbot=275;
  posYbot=425;
  anchoBotIn=150;
  altoBotIn=60;
  posXbotIn=245;
  posYbotIn=355;
  inicio=false;
}

void draw(){
  BotonDeInicio();
  if(inicio == true){
  println(segundos) ;
  println(frame) ;
  ContadorDeTiempo();
  Pantalla1();
  Pantalla2();
  Pantalla3();
  BotonDeReinicio();
  }
}

void ContadorDeTiempo(){
  if (frameCount % 1==0){
    frame++;
  }
  if (frameCount % 60==0){
    segundos++;
  }
  if(segundos %3==0){
    frame=0;
  } 
}

void Pantalla1(){
  if(segundos<3){
    image(imag1,0,0,width,height);
    if(posTX11<= width/2){
      posTX11 = posTX11 +25;
    }
    if(posTX12<= width/2){
      posTX12 = posTX12 +25;
    }
    if (alpha>0){
      alpha= map(frame,90,120,255,0);
    }
    fill(0,0,0,alpha);
    if(posrect1<80 && posrect2<60){
      posrect1=map(posTX11,-40,width/2,0,75);
      posrect2=map(posTX12,-100,width/2,0,145);
    }
    noStroke();
    rect(posrect1,215,535,30) ;
    rect(posrect2,245,535,30) ;
    fill(255,153,0, alpha);
    textFont(fuente,25);
    textAlign(CENTER);
    text("ESTA PELICULA FUE LA INICIAL", posTX11, height/2 );
    text("DE UNA SERIE DE 10 PELICULAS", posTX12, height/2+30); 
  }
}

void Pantalla2(){
  if(segundos>=3 && segundos<=6){
    image(imag2,0,0,width, height);
    if(alpha2<=260){
      alpha2= alpha2 + 20;
    }
    if(alpha<= 255){   
      alpha=map(frame,80,100,0,255);
    }
    fill(0,0,0,alpha2);
    rect(165,5,300,30 );
    rect(167,25,305,30 );
    rect(120,45,405,30 );
    textAlign(CENTER);
    fill(200,200,200,alpha2);
    textSize(20);
    text("LA PRIMERA ENTREGA \n LLEVO AL ESTRELLATO \n A VARIOS DE ESTOS ACTORES",width/2, 25);
    fill(0,0,0,alpha);
    textSize(35);
    noStroke();
    rect(0,310,680,55);
    fill(255,255,255,alpha);
    text("VIN DISEL",width/2, 350);
    textSize(20);
    text("DOMINIC TORETTO",width/2, 370);
    text("COMO A",width/2, 320);
    //println(posTY21);
  }
}

void Pantalla3 (){
  if(segundos>6 && segundos<=11){
    image(imag3,0,0,width, height);
    if(posTX31<75){
      posTX31=map(frame,60,90,-20, 75);
    }
    if(posTY32<50){
      posTY32=map(frame,30, 60.5,-30,50);
    }
    if(posTX33>550){
       posTX33=map(frame, 90,110,710,550) ;
    }
    textSize(14);
    text("SE ESPERA LA ENTREGA DE LA ULTIMA PELICULA DE LA SAGA",width/2, posTY32);
    text("ABRIL",posTX31,195);
    textSize(40);
    text("20 \n 26",posTX31,230);
    textSize(27);
    text("SOLO \n EN \n CINES",posTX33, 220);
  }
}

void BotonDeReinicio(){
  if(segundos>12){ 
    fill(0);
    rect(270,420,115,55);
    fill(255);
    rect(posXbot,posYbot,anchoBot,altoBot);
    image(botonRein, posXbot, posYbot,anchoBot,altoBot);
    if(mouseX>posXbot && mouseX<posXbot+anchoBot && mouseY>posYbot && mouseY<posYbot+altoBot && anchoBot<121 && altoBot<61 ){
      anchoBot= 115;
      altoBot= 55;
      posXbot=270;
      posYbot=420;
    } 
    else{
      anchoBot=105;
      altoBot=45;
      posXbot=275;
      posYbot=425;
    }  
  }
}

void VariablesIniciales(){
  posTX11=-40;
  posTX12=-250;
  alpha=255;
  posTY21=520;
  alpha2=0;
  posrect1=-0;
  posrect2=-80;
  posTX31=-20;
  posTY32=-40;
  posTX33=710;
  segundos=0;
  frame=0;
  anchoBot=105;
  altoBot=45;
  posXbot=275;
  posYbot=425;
  anchoBotIn=150;
  altoBotIn=60;
  posXbotIn=245;
  posYbotIn=355;
  inicio=false;
}
  void mousePressed() {
    if(mouseX>posXbotIn && mouseX<posXbotIn+anchoBotIn && mouseY>posYbotIn && mouseY< posYbotIn+altoBotIn){
       inicio= true; 
    }
    if (segundos>12) {
      if (mouseX>posXbot && mouseX<posXbot+anchoBot && mouseY>posYbot && mouseY<posYbot+altoBot){
        VariablesIniciales();
      }
    }
  }
  
void BotonDeInicio(){
  if(segundos<=1){
    background(80);
    noStroke();
    image(botonIn,80,60,480,300);
    fill(255);
    rect(posXbotIn,posYbotIn,anchoBotIn, altoBotIn);
    fill(0);
    textAlign(CENTER);
    textFont(fuente,40);
    text("PLAY",width/2,400);
  }
}
