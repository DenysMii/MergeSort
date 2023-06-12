Element[] setElementsArray(int[] array, int lenght, int pos_x, int pos_y){
  Element[] elementsArray = new Element[lenght];
  for(int i = 0; i < lenght; i++){
    elementsArray[i] = new Element(array[i], int(width-(size+10)*(pow(2,pos_y-1)-1+arrayLenght))/2+(size+10)*(lenght*(pos_x-1)+pos_x-1+i), 50+(pos_y-1)*(size+30), !boolean(i));
  }
  return elementsArray;
}

void mouseClicked(){
  mouseClicked = true;
}

void checkDivision(boolean correctDivide){
  if(correctDivide){
    print("Correct division", '\n');
  }else{
    print("Incorrect division", '\n');
  }
}

void checkElement(boolean correctElement, boolean clicked){
  if(correctElement && clicked){
    print("Correct element", '\n');
  }else if(clicked && !correctElement){
    print("Incorrect element", '\n');
  }
  
}
