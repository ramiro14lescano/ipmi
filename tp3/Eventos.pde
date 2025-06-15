void mousePressed(){
  if(mouseX>width/2 ){
    if (px1 == 400){
    px1=Rv(px1) ;
    px2=px1;
    }
    else{
      px1=400; 
      px2=800;
    }
  }
  if(mouseX<width/2){
    cambiar=!cambiar;
  }
}

void keyPressed(){
 if (keyPressed){ 
   if (key== 'R' && col1<=255){   
    col1++;
    }
     if (key== 'G' && col2<=255){   
    col2++;
    }
    if (key== 'B' && col3<=255){   
    col3++;
    }
    if (key== 'r' && col1>=1){   
    col1--;
    }
     if (key== 'g' && col2>=1){   
    col2--;
    }
    if (key== 'b' && col3>=1){   
    col3--;
    }
   if (key== '+' && colF<=254){   
    colF++;
   }
   if (key== '-' && colF>=1){   
    colF--;
   }
   if(key == 'i' || key == 'I')
   variablesIniciales();
 }
}
