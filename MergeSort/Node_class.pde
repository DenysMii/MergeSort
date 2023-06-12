class Node{
  Node(int[] array, int lenght, int pos_x, int pos_y, int expectedStep, Element[] elementsArray){
    this.array = array;
    this.lenght = lenght;
    this.pos_x = pos_x;
    this.pos_y = pos_y;
    this.expectedStep = expectedStep;
    this.elementsArray = elementsArray;
  }
  int pos_x, pos_y;
  int lenght;
  int expectedStep;
  int[] array = new int[lenght];
  Element[] elementsArray;
  boolean sorted = false;
  Node left;
  Node right;
  void zeroArraySet(){
    if(!mergeStage){
      for(int i = 0; i < lenght; i++){
        array[i] = 0;
      }
    }
    
  }
  void drawElementsArray(int step){
    for(int g = 0; g < lenght; g++){
      elementsArray[g].drawObject();
      elementsArray[g].divisionClicked(step);
      
    }
  }
}
