void generateArray(){
  if(!arrayGenerated){
    for(int i = 0; i < arrayLenght; i++){
      generatedArray[i] = int(random(1,10));
    }
    arrayGenerated = true;
  }
}
Node generateTree(int[] array, int lenght, int pos_x, int pos_y, int expectedStep){
  Node node = new Node(array, lenght, pos_x, pos_y, expectedStep, setElementsArray(array, lenght, pos_x, pos_y));
  
  node.elementsArray[int(lenght/2)].correctDivide = true;
  if(lenght > 1){
    int middle = (lenght - 1) / 2;
    int n1 = middle + 1;
    int n2 = lenght - middle - 1;
    node.left = generateTree(Arrays.copyOfRange(array, 0, n1), n1, pos_x*2-1, pos_y+1, expectedStep+1);
    node.right = generateTree(Arrays.copyOfRange(array, n1, lenght), n2, pos_x*2, pos_y+1, expectedStep+(node.lenght/2));
  }else{
    node.sorted = true;
  }
  treeGenerated = true;
  return node;
}
