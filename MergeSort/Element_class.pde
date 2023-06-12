class Element{
  int value;
  int x, y;
  boolean correctDivide = false;
  boolean first;
  color Color = color(#CBCBCB);
  Element(int value, int x, int y, boolean first){
    this.value = value;
    this.x = x;
    this.y = y;
    this.first = first;
  }
  void drawObject(){
    fill(Color);
    strokeWeight(1);
    stroke(0);
    rect(x, y, size, size);
    fill(0);
    textSize(textsize);
    textAlign(CENTER,CENTER);
    if(value == 0){
      text('-',x+size/2,y+size/3);
    }else{
      text(value,x+size/2,y+size/3);
    }
    
  }
  void divisionClicked(int expectedStep){
    if(mouseX < x && mouseX > x-10 && mouseY <= y + size && mouseY >= y && !first && step == expectedStep && !mergeStage){
      strokeWeight(10);
      stroke(100);
      line(x-5, y, x-5, y+size);
      if(mouseClicked){
        checkDivision(correctDivide);
        stroke(255*int(!correctDivide),255*int(correctDivide),0);
        line(x-5, y, x-5, y+size);
        step+=int(correctDivide);
        mouseClicked = false;
      }
    }else if(step == expectedStep ){
      strokeWeight(10);
      stroke(255);
      line(x-5, y, x-5, y+size);
    }
  }
  boolean elementClicked(){
    if(mouseX > x && mouseX < x + size && mouseY > y && mouseY < y + size){
      Color = color(150);
      if(mouseClicked){
        mouseClicked = false;
        return true;
      }
    }else{
      Color = color(#CBCBCB);
    }
    return false;
  }
  
}
