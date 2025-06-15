void GrillaDeCirculos(int x,int y,int cant,float tamCi,float tamCf,float tamCel,int xAncl,int yAncl,int Rotar){
  noStroke();
  push();
  translate(xAncl,yAncl);
  rotate(radians(Rotar));
  for(int i=0; i<cant/2-1; i++){
    for(int j=0; j<cant; j++){
      ellipse(x+i*tamCel,y+j*tamCel,tamCi,tamCi);
    }
    tamCi=map(i,0,cant/2,tamCi,tamCf);
  }
  pop();
}

void colores(int col1_,int col2_,int col3_,int colF_,color colC_, color colFondo, boolean apretado){
  if (apretado == true){
  colC_=color(col1_,col2_,col3_);
  colFondo=color(colF_);
  } 
  if(apretado == false){
  colC_=color(colF_);
  colFondo=color(col1_,col2_,col3_);
  }
  background(colFondo);
  fill(colC_);
}

float Tceldas(float cantF,float TGrilla){
  cantF= TGrilla/cantF;
  return cantF;
}



void variablesIniciales(){
img=loadImage("04.png");
col1=255;
col2=255;
col3=255;
colF=0;
Gr1=0;
Gr2=180;
px1=400;
px2=800;
py1=0;
py2=400;
cambiar=true;
colof=color(0);
coloC=color(255);
}

int Rv (int px1_){
  px1_=px1_+px1_/2;
  return px1_;
}

void instrucciones(int col1__,int col2__,int col3__,int colf__){
  println("--------------------------------------------------------------------------------------------------------------------------------------------------------------------");
  println("~INSTRUCCIONES DE USO~");
  println();
  println("click del lado izquierdo de la pantalla invierte los colores");
  println("click del lado derecho de la pantalla invierte la grilla");
  println("R :Subir valor de Rojo");  
  println("G :Subir valor de Verde");  
  println("B :subir valor de Azul");  
  println("r :Bajar valor de Rojo");  
  println("g :Bajar valor de Verde");  
  println("b :Bajar valor de Azul");
  println("R=",col1__,"G=",col2__,"B=",col3__);
  println("color fondo=",colf__);
  println("i o I : Reinicia el programa");
  println();
  println("--------------------------------------------------------------------------------------------------------------------------------------------------------------------");
}
