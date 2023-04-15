//Collatz Conjecture
//rules: if (a % 2 == 0) a/2 else a3+1
//int a = 5;
int a = int(random(10, 50));
int dinA = a;
int maxA = 0;
int stepsA;
void setup () {
  size(600, 600);
  textAlign(RIGHT, TOP);
  background(255);
  //calculate steps
  for (int i = 0; dinA != 1; i++) {
    if (dinA % 2 == 0) {
      dinA /= 2; 
    } else {
      dinA = dinA*3;
      dinA++;
    }
    if (dinA > maxA) maxA = dinA; 
    //println("d " + dinA);
    //println("m " + maxA);
    stepsA = i;
  }
  noFill();
  dinA = a;
  //draw 
  beginShape();
  vertex(0, map(dinA, 1, maxA, height, 0));
  for (int i = 0; dinA != 1; i++) {
    if (dinA % 2 == 0) {
      dinA /= 2; 
    } else {
      dinA = dinA*3;
      dinA++;
    }
    vertex(map(i+1, 0, stepsA, 0, width), map(dinA, 1, maxA, height, 0));
  }
  endShape();
  //output important data
  fill(0);
  text("Steps: " + stepsA, width, 0);
  text("Max Value a: " + maxA, width, 10);
  text("a = " + a, width, 20);
}
