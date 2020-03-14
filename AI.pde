Population test;
PVector goal = new PVector(400,50);




void setup() {

  size(800, 800);
  test=new Population(1000);
}

//---------------------------------------

void draw() {

  background(255);
  test.update();
  test.show();
  drawGoal();
  fill(0);
  text("Generatia: "+test.generation,10,10);
  text("Minimul de pasi: "+test.minStep,10,30);
   fill(255,0,0);
    rect(0,350,400,20);
    rect(200,450,600,20);
  
  if(test.allDotsDead()){
    //genetic algorithm
    test.calculateFitness();
    test.naturalSelection();
    test.mutate();
    
  }else{
  
  }
  
}

//---------------------------------------


void drawGoal(){
  fill(0,255,0);
  ellipse(goal.x,goal.y,10,10);
  
}
