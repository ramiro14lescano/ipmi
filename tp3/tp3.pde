//Ramiro Lescano
//Comision 1
//https://youtu.be/q9YRgetu8c0

PImage img;
int col1,col2,col3,colF,Gr1,Gr2,px1,px2,py1,py2,xbot,ybot,altoBot,anchoBot;
color colof,coloC;
boolean cambiar;
float rotar;

void setup(){
size(800,400);
variablesIniciales();
}

void draw(){
instrucciones(col1,col2,col3,colF);
colores(col1,col2,col3,colF,colof,coloC,cambiar);
GrillaDeCirculos(15,0,16,15,30,Tceldas(14,width/2),px1,py1,Gr1);
GrillaDeCirculos(15,0,16,15,30,Tceldas(14,width/2),px2,py2,Gr2);
image(img,0,0,400,400);
}
