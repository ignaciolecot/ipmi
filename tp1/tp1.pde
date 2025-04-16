PImage maderita;
void setup(){
  size(800,400);
  maderita=loadImage("casaobjeto.jpg");
  line(400,0,400,400);
}

void draw(){
 image(maderita,0,0); 
 print("x: ");
 print(mouseX+400," ");
  print("y: ");
   println(mouseY);
   stroke(0,0,0);
     strokeWeight(1);
   fill(160,85,45); 
   rect(415,390,370,100); 
   fill(70,24,10);
   arc(619,275,100,112,0,PI*2); 
   fill(108,27,24); 
 rect (547,242,140,140); 
 strokeWeight(3);
 rect(555,333,125,46); 
 strokeWeight(1);
 fill(92,46,31);  
 rect(545,379,143,10); 
 triangle(547,390,547,380,529,390); 
 triangle(688,390,688,380,702,390); 
 circle(619,360,12); 
 fill(144,121,96); 
 ellipse(618,281,42,24); 
  fill(92,46,31); 
 rect(545,240 ,143,10); 
 triangle(548,250,548,240,528,250); 
 triangle(688,250,688,240,708,250); 
  fill(70,24,10);  
 triangle (548,250,548,270,528,250);
 triangle(688,250,688,270,708,250);
 stroke(0,0,0);
strokeWeight(1);
  rect(490,155,30,12,45);
    fill(39,13,9);
     ellipse(505,167,30,14);
      fill(70,24,10); 
  rect(498,167,14,15);
    rect(490,182,30,12,45);
    fill(39,13,9);
  ellipse(505,196,30,14);
 stroke(70,24,10); 
 strokeWeight (8);
  line(611,196,510,196); 
  stroke(0,0,0);
  strokeWeight(1);
 fill(70,24,10); 
 rect(611,214,16,6,45); 
 rect(616,198,6,16); 
  rect(611,192,16,8,45); 
  line(627,199,625,214); 
  rect(616,184,6,8); 
  rect(613,180,12,4,45); 

  
 
  
  
 


 


 


}
