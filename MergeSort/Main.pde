import java.util.*;
int arrayLenght = 8;
int width = 1360;
int height = 765;
int size = 75;
int textsize = 75;
int step = 0;
boolean arrayGenerated = false;
boolean treeGenerated = false;
boolean mergeStage = false;
boolean mouseClicked = false;
boolean restart = false;
int mergeCount = 0, i = 0, j = 0;
int[] generatedArray = new int[arrayLenght];
Node node;


void setup(){
  size(1360,765);
  background(255);
}

void draw(){
  generateArray();
  if(!treeGenerated){
    node = generateTree(generatedArray, arrayLenght, 1, 1, 1);
  }
  drawInstruction();
  mergeSort(node);
  if(node.sorted){
    if(restartButton()){
      step = 0;
      arrayGenerated = false;
      treeGenerated = false;
      restart = true;
      background(255);
    }
    
  }
  mouseClicked = false;
  
}
