boolean restartButton(){
  
  if(mouseX > 0 && mouseX < 180 && mouseY > height-100 && mouseY < height-10){
    fill(150);
    if(mouseClicked){
      return true;
    }
  }else{
    fill(#CBCBCB);
  }
  rect(0,height-100,180,90);
  textSize(40);
  textAlign(CENTER,CENTER);
  fill(0);
  text("RESTART",90, height-60);
  return false;
}
void drawInstruction(){
  fill(255);
  noStroke();
  rect(0,height-210,width,100);
  textSize(30);
  textAlign(CENTER,CENTER);
  fill(0);
  text("1.Обрати та натиснути у правильному місці поділу на підмасиви на відповідному кроці.", width/2, height-200);
  text("2.Під час злиття натиснути на менший крайній елемент з 2 підмасивів (якщо однакові - обрати лівий).", width/2, height-150);
  text("Restart=" + restart, width-100, height-50); 
}
