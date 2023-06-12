void mergeSort(Node node){
  
  if(node.lenght > 1 && step >= node.expectedStep){
    mergeSort(node.left);
    mergeSort(node.right);
    if(node.left.sorted && node.right.sorted && !node.sorted){
      node.zeroArraySet();
      mergeStage = true;
      node.elementsArray = setElementsArray(node.array, node.lenght, node.pos_x, node.pos_y);
      
      if(mergeCount == node.lenght){
        node.sorted = true;
        mergeStage = false;
        i = 0;
        j = 0;
        mergeCount = 0;
      }
      merge(node);
      
    }
  }else if(node.lenght == 1){
    node.sorted = true;
  }
  node.drawElementsArray(node.expectedStep-1);
  
}
void merge(Node node){
  int[] pair = {-1,-1};
  boolean boolCheckEl = false;
  boolean clicked = false;
  for(int g = 0; g < node.left.lenght; g++){
    if(node.left.elementsArray[g].elementClicked()){
      pair[0]=g;
      clicked = true;
    }
      
  }
  for(int g = 0; g < node.right.lenght; g++){
    if(node.right.elementsArray[g].elementClicked()){
      pair[1]=g; 
      clicked = true;
    }
      
  }
  if(i < node.left.lenght && j < node.right.lenght) {
    if(node.left.array[i] <= node.right.array[j] && i == pair[0]){
      boolCheckEl = true;
      node.array[mergeCount] = node.left.array[i];
      i++;
      mergeCount++;
    }else if (node.left.array[i] > node.right.array[j] && j == pair[1]){
      boolCheckEl = true;
      node.array[mergeCount] = node.right.array[j];
      j++;
      mergeCount++;
    }
    
  }
  if(i < node.left.lenght && j >= node.right.lenght) {
    if(i == pair[0]){
      boolCheckEl = true;
      node.array[mergeCount] = node.left.array[i];
      i++;
      mergeCount++;
    }
    
  }

  if(j < node.right.lenght && i >= node.left.lenght) {
    if(j == pair[1]){
      boolCheckEl = true;
      node.array[mergeCount] = node.right.array[j];
      j++;
      mergeCount++;
    }
  }
  checkElement(boolCheckEl, clicked);
}
