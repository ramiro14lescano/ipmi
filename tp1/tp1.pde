PImage img;     

void setup(){ 
   size(800,400);
   background(255);
   img=loadImage("MikeWazowski.jpg");
}
void draw(){
  println("X",mouseX,"Y",mouseY);
  image(img,0,0,400,400);
  //Cuerpo y cuernos
  fill(200);
  stroke(150);
  triangle(704,100,690,87,710,74);
  triangle(598,60,582,67,585,42);
  fill(94,222,40);
  stroke(94,222,40);
  ellipse(620,180,250,190);
  ellipse(621,158,200,200);
  
  //Brazo derecho
  quad(792,220,787,235,738,211,745,194);
  quad(795,220,761,281,750,272,780,214);
  quad(761,281,732,314,708,279,750,272);
  quad(717,291,721,298,707,307,702,304);
  triangle(721,295,714,309,732,314);
  strokeWeight(10);
  curve(450,70,492,47,463,60,484,51);
  line(452,50,431,11);
  line(440,47,418,16);
  line(433,54,423,29);
  strokeWeight(1);
  triangle(476,58,458,88,458,64);
  
  //Pierna derecha
  quad(690,259,689,327,674,327,664,271);
  quad(689,327,677,366,659,363,674,327);
  quad(733,374,740,393,649,384,659,363);
  
  //Brazo izquierdo
  quad(518,124,505,149,424,151,430,134);
  quad(465,69,444,152,424,151,449,86);
  quad(452,45,465,58,449,88,430,56);
  
  //Pierna izquierda
  quad(557,262,539,296,523,296,535,249);
  quad(539,296,549,354,531,356,523,296);
  quad(549,354,560,379,470,389,474,370);
  
  //Boca
  stroke(2);
  fill(255);
  ellipse(610,195,170,100);
  fill(0);
  ellipse(610,185,170,100);
  fill(255);
  ellipse(610,175,170,75);
  noStroke();
  fill(94,222,40);
  ellipse(615,145,190,110);
  
  //Ojos
  noStroke();
  fill(15,131,13);
  ellipse(610,127,100,100); 
  fill(255);  
  strokeWeight(1);
  stroke(0);
  ellipse(603,143,100,90);
  fill(14,175,123);
  ellipse(614,147,50,50);
  fill(0,200);
  ellipse(614,147,25,25);
  fill(255);
  ellipse(607,138,7,7);
  

}
